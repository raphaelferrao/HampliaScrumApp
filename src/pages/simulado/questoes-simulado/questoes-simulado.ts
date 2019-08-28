import { LoadingController } from 'ionic-angular';
import { SimuladoProvider } from './../../../providers/simulado/simulado.provider';
import { QUESTOES_SIMULADO_PAGE, CONCLUSAO_SIMULADO_PAGE } from './../../index';
import { FormGroup, Validators, FormBuilder } from '@angular/forms';
import { BasePage } from './../../base/base';
import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, Platform, ToastController } from 'ionic-angular';
import { Questao } from '../../../models/questao.model';
import { MockProvider } from '../../../providers/mock/mock.provider';
import { QuestaoProvider } from '../../../providers/questao/questao.provider';
import { QuestaoRespostaProvider } from '../../../providers/questao-resposta/questao-resposta.provider';
import { QuestaoResposta } from '../../../models/questaoResposta.model';

/**
 * Generated class for the QuestoesSimuladoPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-questoes-simulado',
  templateUrl: 'questoes-simulado.html',
})
export class QuestoesSimuladoPage extends BasePage {

  public simuladoJaCriado: boolean = false;

  public questao: Questao;

  public numeroQuestao: number;
  public quantidadeQuestoes: number;
  public quantidadeAcertos: number;

  public opcaoForm : FormGroup;
  public respondeuQuestao: boolean = false;
  public respondeuCerto: boolean = false;
  public respondeuErrado: boolean = false;
  public opcaoEscolhida: string;
  public msgValidacaoOpcaoEscolhida: string;  

  public unregisterBackButtonAction: any;

  constructor(public navCtrl: NavController,
              public platform: Platform, 
              public formBuilder: FormBuilder,
              public navParams: NavParams,
              public loadingCtrl: LoadingController,
              public toastCtrl: ToastController,
              private mockProvider: MockProvider,
              public questaoProvider: QuestaoProvider,
              public questaoRespostaProvider: QuestaoRespostaProvider,
              public simuladoProvider: SimuladoProvider) {

    super(navCtrl, null, null, toastCtrl);
    this.opcaoForm = this.formBuilder.group({
      opcaoEscolhida: ['', Validators.required]
    });      
  }

  ionViewDidLoad() {
    this.initializeBackButtonCustomHandler();
  }

  ionViewWillLeave() {
    this.unregisterBackButtonAction && this.unregisterBackButtonAction();
  }

  initializeBackButtonCustomHandler(): void {
    this.unregisterBackButtonAction = this.platform.registerBackButtonAction(() => {
      this.abrirPaginaHome();
    }, 113); 
  }  

  ionViewDidEnter(){
    this.carregarParametrosPagina();
    if (!this.simuladoJaCriado) {
      this.criarSimulado();
    } else {
      this.obterQuestao();
    }
  }

  private obterQuestao() {
    if (!this.platform.is('mobileweb') && !this.platform.is('core')) {
      this.obterQuestaoApp();
    } else {
      this.obterQuestaoWeb();
    }
  }

  private obterQuestaoWeb() {
    if (this.numeroQuestao) {

    }
  }

  private carregarParametrosPagina(){
    this.numeroQuestao = this.navParams.get("numeroQuestaoParam");
    console.log("numeroQuestao: ", this.numeroQuestao);
    this.quantidadeQuestoes = this.navParams.get("quantidadeQuestoesParam");
    console.log("quantidadeQuestoes: ", this.quantidadeQuestoes);
    this.quantidadeAcertos = this.navParams.get("quantidadeAcertosParam");
    if (!this.quantidadeAcertos) {
      this.quantidadeAcertos = 0;
    }
    console.log("quantidadeAcertos: ", this.quantidadeAcertos);
    this.simuladoJaCriado = this.navParams.get("simuladoJaCriadoParam");
    console.log("simuladoJaCriado: ", this.simuladoJaCriado);
  }

  private criarSimulado() {
    super.abrirLoading("Criando simulado...");

    this.simuladoProvider.criarSimulado(this.quantidadeQuestoes).then( () => {
      this.obterQuestao();
      super.fecharLoading();
    }).catch( () => {
      super.fecharLoading();
    });
  }

  private obterQuestaoApp() {
    if (this.numeroQuestao) {
      this.questao = this.simuladoProvider.getByOrdem(this.numeroQuestao);
      console.log('obterQuestaoApp questao', this.questao);
      if (this.questao) {
        this.questaoRespostaProvider.getAllByAssuntoQuestao(this.questao.id_assunto, this.questao.id)
          .then( (result: any) => {
            this.questao.respostas = result;
            console.log('obterQuestaoApp questao.respostas', this.questao.respostas);
          })
          .catch((er => { console.log('Erro obterRespostasQuestao', er) } ));
      }
    }
  }  

  ehPrimeiraQuestao(){
    return this.numeroQuestao == 1;
  }

  ehUltimaQuestao(){
    return this.numeroQuestao == this.quantidadeQuestoes;
  }

  voltarPaginaQuestao() {
    this.navCtrl.pop();
  }

  abrirPaginaQuestao(ordem: number) {
    this.navCtrl.push(QUESTOES_SIMULADO_PAGE, { quantidadeQuestoesParam: this.quantidadeQuestoes,
                                                numeroQuestaoParam: ordem,
                                                quantidadeAcertosParam: this.quantidadeAcertos,
                                                simuladoJaCriadoParam: true });
  }

  finalizarSimulado(){
    this.navCtrl.push(CONCLUSAO_SIMULADO_PAGE, { quantidadeQuestoesParam: this.quantidadeQuestoes,
                                                 quantidadeAcertosParam: this.quantidadeAcertos });
  }  

  public responderQuestao(){
    if (!this.opcaoForm.valid) {
      if (this.opcaoForm.controls.opcaoEscolhida.errors) {
        if (this.opcaoForm.controls.opcaoEscolhida.errors.required) {
          this.msgValidacaoOpcaoEscolhida = "Nenhuma opção selecionada!";
          this.respondeuQuestao = false;
          this.exibirToast(`${this.msgValidacaoOpcaoEscolhida}`, 1000);
        }
      }
    } else {
        this.msgValidacaoOpcaoEscolhida = "";
        this.respondeuQuestao = true;

        console.log(this.opcaoForm.value.opcaoEscolhida);
        
        let valorOpcaoEscolhida: string = this.opcaoForm.value.opcaoEscolhida;
        let valoresSeparados = valorOpcaoEscolhida.split(",");
        this.opcaoEscolhida = valorOpcaoEscolhida[0];

        if (valoresSeparados[1] === "1") {
          this.quantidadeAcertos++;
          this.respondeuCerto = true;
          this.respondeuErrado = false;
        } else {
          this.respondeuCerto = false;
          this.respondeuErrado = true;
        } 
    }
  }    

  alterarClass(opcao: QuestaoResposta) {
    let classCss: string = "";

    if (this.respondeuQuestao) {
      if (this.respondeuCerto) {
        if (opcao.letraOpcao == this.opcaoEscolhida) {
          classCss = "opcaoCorreta";
        }
      } else {
        if (opcao.respostaCerta === 1) {
          classCss = "opcaoCorreta";
        } else if (opcao.letraOpcao == this.opcaoEscolhida) {
          classCss = "opcaoErrada";
        }
      }
    }

    return classCss;
  }  

}

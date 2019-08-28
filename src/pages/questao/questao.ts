import { BasePage } from './../base/base';
import { QuestaoRespostaProvider } from './../../providers/questao-resposta/questao-resposta.provider';
import { QuestaoProvider } from './../../providers/questao/questao.provider';
import { Questao } from './../../models/questao.model';
import { QUESTAO_PAGE, CONCLUSAO_QUESTAO_PAGE } from './../index';
import { Assunto } from './../../models/assunto.model';
import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, Platform, ToastController } from 'ionic-angular';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { QuestaoResposta } from '../../models/questaoResposta.model';
import { MockProvider } from '../../providers/mock/mock.provider';

/**
 * Generated class for the QuestaoPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-questao',
  templateUrl: 'questao.html',
})
export class QuestaoPage extends BasePage {

  public assunto: Assunto;
  public questao: Questao;
  public questoes = new Array<Questao>();

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
              public toastCtrl: ToastController,
              private mockProvider: MockProvider,
              public questaoProvider: QuestaoProvider,
              public questaoRespostaProvider: QuestaoRespostaProvider) {

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
    }, 103); 
  }  

  ionViewDidEnter(){
    this.carregarParametrosPagina();
    this.obterQuestao();
  }

  private carregarParametrosPagina(){
    this.assunto = this.navParams.get("assuntoParam");
    console.log("assunto: ", this.assunto);
    this.numeroQuestao = this.navParams.get("numeroQuestaoParam");
    console.log("numeroQuestao: ", this.numeroQuestao);
    this.quantidadeQuestoes = this.navParams.get("quantidadeQuestoesParam");
    if (!this.quantidadeQuestoes) {
      this.obterQuantidadeQuestoes();
    }
    console.log("quantidadeQuestoes: ", this.quantidadeQuestoes);
    this.quantidadeAcertos = this.navParams.get("quantidadeAcertosParam");
    if (!this.quantidadeAcertos) {
      this.quantidadeAcertos = 0;
    }
    console.log("quantidadeAcertos: ", this.quantidadeAcertos);
  }

  private obterQuantidadeQuestoes() {
    if (!this.platform.is('mobileweb') && !this.platform.is('core')) {
      this.obterQuantidadeQuestoesApp();
    } else {
      this.obterQuantidadeQuestoesWeb();
    }
  }

  private obterQuantidadeQuestoesApp() {
    if (this.assunto) {
      this.questaoProvider.countAllByAssunto(this.assunto.id)
      .then((result: number) => {
        this.quantidadeQuestoes = result;
        console.log('obterQuantidadeQuestoes quantidadeQuestoes', this.quantidadeQuestoes);
      })
      .catch((er => { console.log('Erro obterQuantidadeQuestoes', er) } ));
    }
  }   
  
  private obterQuantidadeQuestoesWeb() {
    this.quantidadeQuestoes = this.mockProvider.countAllQuestoesByAssunto(this.assunto.id);
  }

  private obterQuestao() {
    if (!this.platform.is('mobileweb') && !this.platform.is('core')) {
      this.obterQuestaoApp();
    } else {
      this.obterQuestaoWeb();
    }
  }

  private obterQuestaoApp() {
    if (this.assunto && this.numeroQuestao) {
      this.questaoProvider.getAllByAssunto(this.assunto.id)
        .then((result: any) => {
            this.questao = this.questaoProvider.getByAssuntoOrdem(this.assunto.id, this.numeroQuestao);
            console.log('obterQuestaoApp questao', this.questao);
            if (this.questao) {
              this.questaoRespostaProvider.getAllByAssuntoQuestao(this.assunto.id, this.questao.id)
                .then( (result: any) => {
                  this.questao.respostas = result;
                  console.log('obterQuestaoApp questao.respostas', this.questao.respostas);
                })
                .catch((er => { console.log('Erro obterRespostasQuestao', er) } ));
            }
        }).catch((er => { console.log('Erro getAllByAssunto', er) } ));
    }
  }

  private obterQuestaoWeb() {
    if (this.assunto && this.numeroQuestao) {
      this.mockProvider.getAllQuestoesByAssunto(this.assunto.id);
      this.questao = this.mockProvider.getQuestaoByAssuntoOrdem(this.assunto.id, this.numeroQuestao);
      console.log('obterQuestaoWeb questao', this.questao);
    }
  }

  ehPrimeiraQuestao(){
    return this.numeroQuestao == 1;
  }

  ehUltimaQuestao(){
    return this.numeroQuestao == this.quantidadeQuestoes;
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

  abrirPaginaQuestao(ordem: number) {
    this.navCtrl.push(QUESTAO_PAGE, { assuntoParam: this.assunto, 
                                      quantidadeQuestoesParam: this.quantidadeQuestoes,
                                      numeroQuestaoParam: ordem,
                                      quantidadeAcertosParam: this.quantidadeAcertos });
  }

  voltarPaginaQuestao() {
    this.navCtrl.pop();
  }

  finalizarAula(){
    this.navCtrl.push(CONCLUSAO_QUESTAO_PAGE, { assuntoParam: this.assunto, 
                                                quantidadeQuestoesParam: this.quantidadeQuestoes,
                                                quantidadeAcertosParam: this.quantidadeAcertos });
  }  

}

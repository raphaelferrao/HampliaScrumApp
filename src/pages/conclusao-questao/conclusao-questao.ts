import { LoadingController } from 'ionic-angular';
import { PERCENTUAL_ACERTO_PSM } from './../../util/constantes';
import { BasePage } from './../base/base';
import { QUESTAO_PAGE } from './../index';
import { Assunto } from './../../models/assunto.model';
import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, Platform } from 'ionic-angular';

/**
 * Generated class for the ConclusaoQuestaoPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-conclusao-questao',
  templateUrl: 'conclusao-questao.html',
})
export class ConclusaoQuestaoPage extends BasePage {

  public assunto: Assunto;

  public numeroQuestao: number;
  public quantidadeQuestoes: number;
  public quantidadeAcertos: number;
  public percentualAcerto: number;
  public aprovadoPSM: boolean;
  
  public msgResultadoAprovacaoPSM: string;
  public msgNumeroAcertosPorNumeroQuestoes: string;

  public unregisterBackButtonAction: any;

  constructor(public navCtrl: NavController, 
              public navParams: NavParams,
              public platform: Platform,
              public loadingCtrl: LoadingController) {     

      super(navCtrl, null, loadingCtrl);
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
    }, 104); 
  }   

  ionViewDidEnter(){
    this.abrirLoading("Calculando resultado...");
    this.carregarParametrosPagina();
    this.calcularResultado();
    this.fecharLoading();
  }

  private carregarParametrosPagina(){
    this.assunto = this.navParams.get("assuntoParam");
    console.log("assunto: ", this.assunto);
    this.quantidadeQuestoes = this.navParams.get("quantidadeQuestoesParam");
    console.log("quantidadeQuestoes: ", this.quantidadeQuestoes);
    this.quantidadeAcertos = this.navParams.get("quantidadeAcertosParam");
    console.log("quantidadeAcertos: ", this.quantidadeAcertos);
  }

  private calcularResultado() {
    this.percentualAcerto = ((this.quantidadeAcertos / this.quantidadeQuestoes) * 100);    
    const percAcerto = `${this.percentualAcerto.toFixed(1)}%`;

    this.msgNumeroAcertosPorNumeroQuestoes = `Você acertou ${this.quantidadeAcertos} de ${this.quantidadeQuestoes} (${percAcerto}) !`;

    if ( this.percentualAcerto >= PERCENTUAL_ACERTO_PSM) {
      this.aprovadoPSM = true;
      this.msgResultadoAprovacaoPSM = `Parabéns, como você acertou acima de ${PERCENTUAL_ACERTO_PSM}% seria aprovado na prova PSM (Professional Scrum Master).`;
    } else {
      this.aprovadoPSM = false;
      this.msgResultadoAprovacaoPSM = `Ops! Abaixo de ${PERCENTUAL_ACERTO_PSM}% você <b>não</b> é aprovado na prova PSM (Professional Scrum Master)! <br> Faça as questões mais algumas vezes para garantir um resultado melhor!`;
    }
  }

  public reiniciar() {
    this.abrirLoading();
    this.navCtrl.popToRoot();
    this.navCtrl.push(QUESTAO_PAGE, { assuntoParam: this.assunto, 
                                      quantidadeQuestoesParam: this.quantidadeQuestoes,
                                      numeroQuestaoParam: 1,
                                      quantidadeAcertosParam: 0 });
    this.fecharLoading();
  }

}

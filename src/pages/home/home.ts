import { BasePage } from './../base/base';
import { QUESTAO_PAGE, INICIO_SIMULADO_PAGE } from './../index';
import { MockProvider } from './../../providers/mock/mock.provider';
import { AssuntoProvider } from './../../providers/assunto/assunto.provider';
import { Assunto } from './../../models/assunto.model';
import { Component } from '@angular/core';
import { NavController, IonicPage, Platform, AlertController } from 'ionic-angular';

@IonicPage()
@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage extends BasePage {

  public assuntos = [];

  constructor(public navCtrl: NavController, 
              public platform: Platform,
              public mockProvider: MockProvider,
              public assuntoProvider: AssuntoProvider,
              public alertCtrl: AlertController) {

    super(navCtrl, alertCtrl);

    let backAction =  platform.registerBackButtonAction(() => {
      this.exibirMensagemConfirmacaoEncerrarAplicativo();
    },101); 
  }

  ionViewDidEnter() {
    if (!this.platform.is('mobileweb') && !this.platform.is('core')) {
      this.obterTodosAssuntosApp();
    } else {
      this.obterTodosAssuntosWeb();
    }
  }
 
  obterTodosAssuntosWeb() {
    this.assuntos = this.mockProvider.getAllAssuntos();
  }

  obterTodosAssuntosApp() {
    console.log('obterTodosAssuntosApp');
    this.assuntoProvider.getAll()
      .then((result: any[]) => {
        this.assuntos = result;
        if (!this.assuntos || this.assuntos.length==0) {
          this.obterTodosAssuntosWeb();
        }
        console.log('obterTodosAssuntosApp assuntos', this.assuntos);
      })
      .catch((er => { 
        console.log('Erro obterTodosAssuntosApp', er);
        this.obterTodosAssuntosWeb();
      } ));
  }

  public abrirPaginaQuestoes(assunto: Assunto) {
    this.navCtrl.push(QUESTAO_PAGE, { assuntoParam: assunto, 
                                      numeroQuestaoParam: 1,
                                      quantidadeAcertosParam: 0 });
  }

  public abrirPaginaInicioSimulado() {
    this.navCtrl.push(INICIO_SIMULADO_PAGE);
  }

  private exibirMensagemConfirmacaoEncerrarAplicativo(){
    const confirm = this.alertCtrl.create({
      title: 'Atenção',
      message: 'Deseja encerrar o aplicativo?',
      cssClass: "alert-danger",
      buttons: [
        {
          text: 'Não',
          handler: () => {
          }
        },
        {
          text: 'Sim',
          handler: () => {
              this.platform.exitApp();
          }
        }
      ]
    });
    confirm.present();
  }  

}

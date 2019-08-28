import { QUESTOES_SIMULADO_PAGE } from './../../index';
import { BasePage } from './../../base/base';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, ToastController, LoadingController, AlertController, Platform } from 'ionic-angular';

/**
 * Generated class for the InicioSimuladoPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-inicio-simulado',
  templateUrl: 'inicio-simulado.html',
})
export class InicioSimuladoPage extends BasePage {

  public simuladoForm : FormGroup;
  public msgValidacaoNumeroQuestoes : string = "";
  public unregisterBackButtonAction: any;

  constructor(public navCtrl: NavController, 
              public navParams: NavParams,
              public formBuilder: FormBuilder,
              public platform: Platform,
              public alertCtrl: AlertController,
              public loadingCtrl: LoadingController,
              public toastCtrl: ToastController) {
    
    super(navCtrl, alertCtrl, loadingCtrl, toastCtrl);      

    this.simuladoForm = this.formBuilder.group({
      numeroQuestoes: ['', Validators.compose([Validators.required, Validators.minLength(1), Validators.maxLength(2), 
                                               Validators.min(2), Validators.max(99)])],
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
    }, 112); 
  }  

  public gerarNovoSimulado() {

    if (!this.simuladoForm.valid) {
      this.validarCamposGerarSimulado();

    } else {
      const numeroQuestoes = this.simuladoForm.value.numeroQuestoes;

      this.navCtrl.push(QUESTOES_SIMULADO_PAGE, { quantidadeQuestoesParam: numeroQuestoes, 
                                                  numeroQuestaoParam: 1, 
                                                  quantidadeAcertosParam: 0,
                                                  simuladoJaCriadoParam: false });
    }
  }

  private validarCamposGerarSimulado() {
    this.msgValidacaoNumeroQuestoes = this.validaCampo(this.simuladoForm.controls.numeroQuestoes, "Número de Questões");
  }

}

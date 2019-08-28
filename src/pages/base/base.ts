import { ViewChild } from '@angular/core';
import { HOME_PAGE } from './../index';
import { AlertController, Loading, LoadingController, ToastController, NavController, Content } from "ionic-angular";
import { AbstractControl } from '@angular/forms';


export class BasePage {

    @ViewChild(Content) content: Content;

    private loader : Loading;
    public idioma: string = "EN";
    public toggleIdioma: boolean;

    constructor(public navCtrl: NavController,
                public alertCtrl?: AlertController,
                public loadingCtrl?: LoadingController,
                public toastCtrl?: ToastController ){

    }

    abrirPaginaHome() {
        this.navCtrl.setRoot(HOME_PAGE);
    }

    alterarIdioma() {
        console.log(this.toggleIdioma);
        if (this.toggleIdioma) {
            this.idioma = "PT";
        } else {
            this.idioma = "EN";
        }
    }

    public exibirToast(mensagem: string, duracao?: number) {
        const toast = this.toastCtrl.create({
          message: mensagem,
          duration: ((duracao) ? duracao : 3000) 
        });
        toast.present();
    }

    scrollToTop() {
      this.content.scrollToTop();
    }

    public abrirLoading(mensagem?: string) {
        this.loader = this.loadingCtrl.create({
            spinner: 'crescent',
            content: mensagem || 'Por favor, aguarde...'
        });
        this.loader.present();
    }

    public fecharLoading() {
        if(this.loader){
            this.loader.dismiss();
        }
    }  

    public validaCampo(campo: AbstractControl, nomeCampo: string) : string {
        let msgValidacao = "";
    
        if (campo.errors) {
          if (campo.errors.required) {
            msgValidacao = `${nomeCampo} não preenchido!`;
          } else if (campo.errors.minlength) {
            msgValidacao = `${nomeCampo} deve ter no mínimo ${campo.errors.minlength.requiredLength} caracteres/dígitos!`;
          } else if (campo.errors.maxlength) {
            msgValidacao = `${nomeCampo} deve ter no máximo ${campo.errors.maxlength.requiredLength} caracteres/dígitos!`;
          } else if (campo.errors.min) {
            msgValidacao = `${nomeCampo} deve ser maior ou igual a ${campo.errors.min.min}!`;
          } else if (campo.errors.max) {
            msgValidacao = `${nomeCampo} deve ser menor ou igual a ${campo.errors.max.max}!`;         
          } else if (campo.errors.email) {
            msgValidacao = `${nomeCampo} possui um email inválido!`;
          } else {
            msgValidacao = `${nomeCampo} é inválido!`;
          }
        }
    
        return msgValidacao;
    } 
}
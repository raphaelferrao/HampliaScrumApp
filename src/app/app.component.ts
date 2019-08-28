import { GlobalvarProvider } from './../providers/globalvar/globalvar.provider';
import { DatabaseProvider } from './../providers/database/database.provider';
import { TABS_PAGE } from './../pages/index';
import { Component, ViewChild } from '@angular/core';
import { Platform, AlertController, Nav, App } from 'ionic-angular';
import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';


@Component({
  templateUrl: 'app.html'
})
export class MyApp {
  @ViewChild(Nav) nav: Nav;

  rootPage:any = TABS_PAGE;

  constructor(public platform: Platform, 
              public statusBar: StatusBar, 
              public splashScreen: SplashScreen,
              public alertCtrl: AlertController,
              public databaseProvider: DatabaseProvider,
              public globalvarProvider: GlobalvarProvider,
              public app: App) {

    platform.ready().then(() => {
      if (!this.platform.is('mobileweb') && !this.platform.is('core')) {
        //Criando o banco de dados
        databaseProvider.createDatabase()
          .then(() => {
            // fechando a SplashScreen somente quando o banco for criado
            this.abrirPaginaInicial(statusBar, splashScreen);
          })
          .catch(() => {
            // ou se houver erro na criação do banco
            this.abrirPaginaInicial(statusBar, splashScreen);
          });

      } else {
        this.abrirPaginaInicial(statusBar, splashScreen);
      }
    });
  }

  abrirPaginaInicial(statusBar: StatusBar, splashScreen: SplashScreen) {
      // Okay, so the platform is ready and our plugins are available.
      // Here you can do any higher level native things you might need.
      statusBar.styleDefault();
      splashScreen.hide();
      this.tratarBotaoVoltar();
      //this.showAdMob();
  }

  private tratarBotaoVoltar() {
    this.platform.registerBackButtonAction(() => {
        let view = this.nav.getActive();
        console.log("view: ", view);
        console.log("view.component.name: ", view.component.name);
        console.log("getActiveTab: ", this.globalvarProvider.getActiveTab());

        if (this.globalvarProvider.getActiveTab() != 0) {
          this.nav.getActiveChildNav().select(0);    
        } else if (view.component.name == TABS_PAGE) {
          this.exibirMensagemConfirmacaoEncerrarAplicativo();
        } else if (this.nav.canGoBack()) {
          this.nav.pop();
        } else if (view.component.name != TABS_PAGE) {
          this.nav.setRoot(TABS_PAGE); 
        } else {
          this.exibirMensagemConfirmacaoEncerrarAplicativo();
        }
    });
  }

  private exibirMensagemConfirmacaoEncerrarAplicativo(nomePagina?: string){
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
            if (nomePagina) {
              this.nav.setRoot(nomePagina); 
            } else {
              this.platform.exitApp();
            }
          }
        }
      ]
    });
    confirm.present();
  }

  /*
  private showAdMob() {
    if (!this.platform.is('mobileweb') && !this.platform.is('core')) {
      var adMobId = {
          bannerAndroid: 'ca-app-pub-6221728060198320/1840638083',
          bannerIOS:     'ca-app-pub-6221728060198320/8606616162'
      };

      this.adMob.banner.show({
        id: { android: adMobId.bannerAndroid, ios: adMobId.bannerIOS }
      }).then( (any) =>  {
        console.log("AdMob banner gerado com sucesso!");
      }).catch( (error) => {
        console.error("Erro ao gerar AdMob banner:", error);
      });

      this.adMob.setDevMode(false);
    }
  }
  */
}

import { GLOSSARIO } from './../../util/constantes';
import { BasePage } from './../base/base';
import { GlossarioProvider } from './../../providers/glossario/glossario.provider';
import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { Glossario } from '../../models/glossario.model';
import { GlossarioLetra } from '../../models/glossarioLetra.model';
import { Storage } from '@ionic/storage';

/**
 * Generated class for the GlossarioPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-glossario',
  templateUrl: 'glossario.html',
})
export class GlossarioPage extends BasePage {

  public glossario: Glossario = new Glossario();
  public keyGlossario = `${GLOSSARIO}_${this.idioma}`;

  constructor(public navCtrl: NavController, 
              public navParams: NavParams,
              public storage: Storage,
              public glossarioProvider: GlossarioProvider) {

    super(navCtrl, null, null, null);
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad GlossarioPage');
  }

  ionViewDidEnter() {
    this.obterGlossario();
  }

  private obterGlossario(){
    this.storage.get(this.keyGlossario)
    .then((val: any) => {
      if (val) {
        console.log("Glossário do cache.")
        this.glossario = val;
      } else {
        this.obterItensGlossario();
      }        
    })
    .catch(e => {
      this.obterItensGlossario();
    });
  }

  private obterItensGlossario() {
    console.log('obterItensGlossario');
    this.glossarioProvider.getLetrasGlossario(this.idioma)
      .then((result: any[]) => {
        this.glossario.letras = result;
        console.log('obterItensGlossario glossario', this.glossario.letras);
        
        if (this.glossario.letras) {
          for (let i=0; i<this.glossario.letras.length; i++) {
            this.obterItensLetraGlossario(this.glossario.letras[i])
              .then( (result: any[]) => {
                this.glossario.letras[i].items = result;
                this.storage.set(this.keyGlossario, this.glossario);
              })
              .catch((er => { console.log(`Erro obterItensLetraGlossario(${this.glossario.letras[i]}`, er) } ));
          }        
        }
      })
      .catch((er => { console.log('Erro obterItensGlossario', er) } ));
  }

  private obterItensLetraGlossario(letra: GlossarioLetra) : Promise<void | any[]> {
    return this.glossarioProvider.getItensByIdiomaLetra(this.idioma, letra.id)
      .then((result: any[]) => {
        return result;
      })
      .catch((er => { console.log('Erro obterItensGlossario', er); }));
  }

  alterarIdiomaGlossario(){
    this.alterarIdioma();
    this.keyGlossario = `${GLOSSARIO}_${this.idioma}`;
    this.obterGlossario();
  }

}

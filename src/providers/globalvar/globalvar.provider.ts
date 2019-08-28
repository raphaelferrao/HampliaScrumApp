import { Injectable } from '@angular/core';

@Injectable()
export class GlobalvarProvider {

  private ativeTab: any;
  private idioma: any;

  constructor(){
      this.ativeTab=null;
      this.idioma = "EN";
  }

  setActiveTab(val){
      this.ativeTab=val;
  }
  getActiveTab(){
      return this.ativeTab;
  }

  setIdioma(val) {
      this.idioma = val;
  }
  getIdioma(){
      return this.idioma;
  }

}

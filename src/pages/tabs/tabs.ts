import { GlobalvarProvider } from './../../providers/globalvar/globalvar.provider';
import { HOME_PAGE, ABOUT_PAGE, GLOSSARIO_PAGE } from './../index';
import { Component, ViewChild } from '@angular/core';
import { IonicPage, NavParams, Tabs } from 'ionic-angular';

@IonicPage()
@Component({
  templateUrl: 'tabs.html'
})
export class TabsPage {

  @ViewChild('mainTabs') tabRef: Tabs;

  tab1Root = HOME_PAGE;
  tab2Root = GLOSSARIO_PAGE;
  tab3Root = ABOUT_PAGE;

  selectedIndex: number;

  constructor(public navParams: NavParams, 
              public globalvarProvider: GlobalvarProvider) {
    
    this.selectedIndex = 0;
    this.globalvarProvider.setActiveTab(this.selectedIndex);
  }

  trocarTabs() {
    this.selectedIndex = this.tabRef.getSelected().index;
    this.globalvarProvider.setActiveTab(this.selectedIndex);
  }


}

import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { InicioSimuladoPage } from './inicio-simulado';

@NgModule({
  declarations: [
    InicioSimuladoPage,
  ],
  imports: [
    IonicPageModule.forChild(InicioSimuladoPage),
  ],
})
export class InicioSimuladoPageModule {}

import { NgModule, ErrorHandler } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { IonicApp, IonicModule, IonicErrorHandler } from 'ionic-angular';
import { MyApp } from './app.component';
import { IonicStorageModule } from '@ionic/storage';
import { HttpModule } from '@angular/http';

import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';
import { SQLitePorter } from '@ionic-native/sqlite-porter';
import { SQLite } from '@ionic-native/sqlite';
import { DatabaseProvider } from '../providers/database/database.provider';
import { AssuntoProvider } from '../providers/assunto/assunto.provider';
import { HttpClientModule } from '@angular/common/http';
import { StorageProvider } from '../providers/storage/storage.provider';
import { MockProvider } from '../providers/mock/mock.provider';
import { FormsModule } from '@angular/forms';
import { QuestaoProvider } from '../providers/questao/questao.provider';
import { QuestaoRespostaProvider } from '../providers/questao-resposta/questao-resposta.provider';
import { GlobalvarProvider } from '../providers/globalvar/globalvar.provider';
import { GlossarioProvider } from '../providers/glossario/glossario.provider';
import { SimuladoProvider } from '../providers/simulado/simulado.provider';

@NgModule({
  declarations: [
    MyApp
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule,
    HttpClientModule,
    IonicStorageModule.forRoot(),
    IonicModule.forRoot(MyApp)
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp
  ],
  providers: [
    StatusBar,
    SplashScreen,
    {provide: ErrorHandler, useClass: IonicErrorHandler},
    SQLitePorter,
    SQLite,
    DatabaseProvider,
    AssuntoProvider,
    StorageProvider,
    MockProvider,
    QuestaoProvider,
    QuestaoRespostaProvider,
    GlobalvarProvider,
    GlossarioProvider,
    SimuladoProvider
  ]
})
export class AppModule {}

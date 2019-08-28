import { Assunto } from './../../models/assunto.model';
import { DatabaseProvider } from './../database/database.provider';
import { Injectable } from '@angular/core';
import { SQLiteObject } from '@ionic-native/sqlite';

/*
  Generated class for the AssuntoProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class AssuntoProvider {

  constructor(private dbProvider: DatabaseProvider) {
    console.log('Hello AssuntoProvider Provider');
  }

  public get(id: number) {
    return this.dbProvider.getDB()
      .then((db: SQLiteObject) => {
        let sql = "SELECT * FROM assunto WHERE id = ?";
        let data = [id];
 
        return db.executeSql(sql, data)
          .then((data: any) => {
            if (data.rows.length > 0) {
              let item = data.rows.item(0);
              let assunto = new Assunto();
              assunto.id = item.id;
              assunto.nome_pt = item.nome_pt;
              assunto.nome_en = item.nome_en;
              console.log(`get(${id}) assunto: `, assunto)
              return assunto;
            }
 
            return null;
          })
          .catch((e) => console.error("Erro executeSql get(id)", e));
      })
      .catch((e) => console.error('Erro get(id)', e));
  }
 
  public getAll() {
    return this.dbProvider.getDB()
      .then((db: SQLiteObject) => {
        let sql = 'SELECT a.* '+
                  'FROM assunto a ';
        console.log('getAll sql: ', sql);
        return db.executeSql(sql, [])
          .then((data: any) => {
            //console.log('data: ', data);
            if (data.rows.length > 0) {
              let assuntos: any[] = [];
              for (var i = 0; i < data.rows.length; i++) {
                var assunto = data.rows.item(i);
                //console.log('assunto: ', assunto);
                assuntos.push(assunto);
              }
              console.log('getAll assuntos: ', assuntos);
              return assuntos;
            } else {
              return [];
            }
          })
          .catch((e) => console.error("Erro executeSql getAll", e));
      })
      .catch((e) => console.error("Erro getAll", e));
  }

}

import { DatabaseProvider } from './../database/database.provider';
import { Injectable } from '@angular/core';
import { SQLiteObject } from '@ionic-native/sqlite';

/*
  Generated class for the GlossarioProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class GlossarioProvider {

  constructor(private dbProvider: DatabaseProvider) {

  }

  public getLetrasGlossario(idioma: string) {
    return this.dbProvider.getDB()
      .then((db: SQLiteObject) => {
        let sql = "SELECT DISTINCT(gl.id), gl.letra " +
                  "FROM glossario g, glossario_letra gl, glossario_letra_item gli " +
                  "WHERE g.id = gli.id_glossario " +
                  "AND gl.id = gli.id_letra " +
                  "AND g.idioma = ? " + 
                  "ORDER BY gl.letra";

        let data = [idioma];
 
        return db.executeSql(sql, data)
          .then((data: any) => {
            if (data.rows.length > 0) {
              let letras: any[] = [];
              for (var i = 0; i < data.rows.length; i++) {
                var letra = data.rows.item(i);
                //console.log('questao: ', questao);
                letras.push(letra);
              }
              console.log(`getLetrasGlossario(${idioma}) letras: `, letras);
              return letras;
            } else {
              return [];
            }
          })
          .catch((e) => console.error("Erro executeSql getLetrasGlossario(idioma)", e));
      })
      .catch((e) => console.error('Erro getLetrasGlossario(idioma)', e));
  }

  public getItensByIdiomaLetra(idioma: string, idLetra: number) {
    return this.dbProvider.getDB()
      .then((db: SQLiteObject) => {
        let sql = "SELECT gli.id_glossario, gli.id_letra, gli.id, gli.termo, gli.descricao " +
                  "FROM glossario g, glossario_letra gl, glossario_letra_item gli " +
                  "WHERE g.id = gli.id_glossario " +
                  "AND gl.id = gli.id_letra " +
                  "AND g.idioma = ? " +
                  "AND gli.id_letra = ? " +
                  "ORDER BY gli.termo ";

        let data = [idioma, idLetra];
 
        return db.executeSql(sql, data)
          .then((data: any) => {
            if (data.rows.length > 0) {
              let itens: any[] = [];
              for (var i = 0; i < data.rows.length; i++) {
                var item = data.rows.item(i);
                //console.log('questao: ', questao);
                itens.push(item);
              }
              console.log(`getItensByIdiomaLetra(${idioma}, ${idLetra}) itens: `, itens);
              return itens;
            } else {
              return [];
            }
          })
          .catch((e) => console.error("Erro executeSql getItensByIdiomaLetra(idioma, idLetra)", e));
      })
      .catch((e) => console.error('Erro getItensByIdiomaLetra(idioma, idLetra)', e));
  } 

}

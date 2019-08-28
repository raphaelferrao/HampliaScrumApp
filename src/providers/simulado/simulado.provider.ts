import { DatabaseProvider } from './../database/database.provider';
import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Questao } from '../../models/questao.model';
import { SQLiteObject } from '@ionic-native/sqlite';

/*
  Generated class for the SimuladoProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class SimuladoProvider {

  private questoes: Array<Questao> = new Array<Questao>();
  private questoesSimulado: Array<Questao> = new Array<Questao>();

  constructor(private dbProvider: DatabaseProvider) {
    
  }

  private getAll() {
    return this.dbProvider.getDB()
      .then((db: SQLiteObject) => {

        let sql = "SELECT * FROM questao ORDER BY id_assunto, ordem";
 
        return db.executeSql(sql, [])
          .then((data: any) => {
            if (data.rows.length > 0) {
              let questoes: any[] = [];
              for (var i = 0; i < data.rows.length; i++) {
                var questao = data.rows.item(i);
                //console.log('questao: ', questao);
                questoes.push(questao);
              }
              console.log(`getAll() questoes: `, questoes);
              return questoes;
            } else {
              return new Array<Questao>();
            }
          })
          .catch((e) => console.error("Erro executeSql getAll()", e));
      })
      .catch((e) => console.error('Erro getAll()', e));
  }
  
  public criarSimulado(quantidadeQuestoes: number) {
    return this.getAll().then( (questoes: Array<Questao>) => {
      const indicesSorteados: Array<number> = new Array<number>();
      
      let i = 0;
      while(indicesSorteados.length < quantidadeQuestoes) {
        let posRandom = Math.floor(Math.random() * (questoes.length));
        let pos = indicesSorteados.indexOf(posRandom);
        if (pos == -1) {
          questoes[posRandom].ordem = i+1;
          indicesSorteados.push(posRandom);
          this.questoesSimulado.push(questoes[posRandom]);
          i++;
        }
      }   

      console.log(`criarSimulado() questoes: `, this.questoesSimulado);
      return this.questoesSimulado;
    })
    .catch((e) => console.error(`Erro criarSimulado(${quantidadeQuestoes})`, e));
  }

  public getByOrdem(numOrdem: number) : Questao {

     const ehIgual = (item) => {
      return item.ordem == numOrdem;
    };

    const questoesFiltered = this.questoesSimulado.filter( ehIgual );   

    if (questoesFiltered && questoesFiltered.length>0) {
      let questao: Questao = questoesFiltered[0];
      return questao;
    } else {
      return null;
    }
  }   

}

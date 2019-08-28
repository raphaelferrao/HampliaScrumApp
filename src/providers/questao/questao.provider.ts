import { Questao } from './../../models/questao.model';
import { DatabaseProvider } from './../database/database.provider';
import { Injectable } from '@angular/core';
import { SQLiteObject } from '@ionic-native/sqlite';

/*
  Generated class for the QuestaoProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class QuestaoProvider {

  private qA1: Array<Questao> = new Array<Questao>();
  private qA2: Array<Questao> = new Array<Questao>();
  private qA3: Array<Questao> = new Array<Questao>();
  private qA4: Array<Questao> = new Array<Questao>();
  private qA5: Array<Questao> = new Array<Questao>();

  constructor(private dbProvider: DatabaseProvider) {

  }

  public getAllByAssunto(idAssunto: number) {
    return this.dbProvider.getDB()
      .then((db: SQLiteObject) => {

        if (idAssunto==1 && this.qA1.length>0) {
          return this.qA1;
        } else if (idAssunto==2 && this.qA2.length>0) {
          return this.qA2;
        } else if (idAssunto==3 && this.qA3.length>0) {
          return this.qA3;
        } else if (idAssunto==4 && this.qA4.length>0) {
          return this.qA4;
        } else if (idAssunto==5 && this.qA5.length>0) {
          return this.qA5;
        }

        let sql = "SELECT * FROM questao WHERE id_assunto = ? ORDER BY ordem";
        let data = [idAssunto];
 
        return db.executeSql(sql, data)
          .then((data: any) => {
            if (data.rows.length > 0) {
              let questoes: any[] = [];
              for (var i = 0; i < data.rows.length; i++) {
                var questao = data.rows.item(i);
                //console.log('questao: ', questao);
                questoes.push(questao);
              }
              console.log(`getAllByAssunto(${idAssunto}) questoes: `, questoes);
              return this.embaralhaQuestoes(idAssunto, questoes);
            } else {
              return [];
            }
          })
          .catch((e) => console.error("Erro executeSql getAllByAssunto(idAssunto)", e));
      })
      .catch((e) => console.error('Erro getAllByAssunto(idAssunto)', e));
  } 

  public countAllByAssunto(idAssunto: number) {
    return this.dbProvider.getDB()
      .then((db: SQLiteObject) => {
        let sql = "SELECT count(*) qtd FROM questao WHERE id_assunto = ? ";
        let data = [idAssunto];
        let qtd = 0;
 
        return db.executeSql(sql, data)
          .then((data: any) => {
            if (data.rows.length > 0) {
              let item = data.rows.item(0);
              qtd = item.qtd;
            }
            console.log(`countAllByAssunto(${idAssunto}) qtd: `, qtd);
            return qtd;
          })
          .catch((e) => console.error("Erro executeSql countAllByAssunto(idAssunto)", e));
      })
      .catch((e) => console.error('Erro countAllByAssunto(idAssunto)', e));
  }   
  
  private embaralhaQuestoes(idAssunto: number, questoes: Questao[]) {

    let questoesEmbaralhadas: Array<Questao> = new Array<Questao>();

    const indicesSorteados: Array<number> = new Array<number>();
    
    let i = 0;
    while(indicesSorteados.length < questoes.length) {
      let posRandom = Math.floor(Math.random() * (questoes.length));
      let pos = indicesSorteados.indexOf(posRandom);
      if (pos == -1) {
        questoes[posRandom].ordem = i+1;
        indicesSorteados.push(posRandom);
        questoesEmbaralhadas.push(questoes[posRandom]);
        i++;
      }
    }    
    if (idAssunto == 1) {
      this.qA1 = questoesEmbaralhadas;
    } else if (idAssunto == 2) {
      this.qA2 = questoesEmbaralhadas;
    } else if (idAssunto == 3) {
      this.qA3 = questoesEmbaralhadas;
    } else if (idAssunto == 4) {
      this.qA4 = questoesEmbaralhadas;
    } else if (idAssunto == 5) {
      this.qA5 = questoesEmbaralhadas;
    }

    return questoesEmbaralhadas;
  }

  public getByAssuntoOrdem(idAssunto: number, numOrdem: number) : Questao {

    let questoes: Array<Questao>;

    if (idAssunto==1 && this.qA1.length>0) {
      questoes = this.qA1;
    } else if (idAssunto==2 && this.qA2.length>0) {
      questoes = this.qA2;
    } else if (idAssunto==3 && this.qA3.length>0) {
      questoes = this.qA3;
    } else if (idAssunto==4 && this.qA4.length>0) {
      questoes = this.qA4;
    } else if (idAssunto==5 && this.qA5.length>0) {
      questoes = this.qA5;
    }

    const ehIgual = (item) => {
      return item.id_assunto == idAssunto && item.ordem == numOrdem;
    };

    const questoesFiltered = questoes.filter( ehIgual );   

    if (questoesFiltered && questoesFiltered.length>0) {
      let questao: Questao = questoesFiltered[0];
      return questao;
    } else {
      return null;
    }
  }  

}

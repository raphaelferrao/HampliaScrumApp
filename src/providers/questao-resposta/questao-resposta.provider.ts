import { QuestaoResposta } from './../../models/questaoResposta.model';
import { DatabaseProvider } from './../database/database.provider';
import { Injectable } from '@angular/core';
import { SQLiteObject } from '@ionic-native/sqlite';

/*
  Generated class for the QuestaoRespostaProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class QuestaoRespostaProvider {

  constructor(private dbProvider: DatabaseProvider) {

  }

  public getAllByAssuntoQuestao(idAssunto: number, idQuestao: number) {
    return this.dbProvider.getDB()
      .then((db: SQLiteObject) => {
        let sql = "SELECT * FROM questao_resposta WHERE id_assunto = ? AND id_questao = ? ORDER BY letraOpcao";
        let data = [idAssunto, idQuestao];
 
        return db.executeSql(sql, data)
          .then((data: any) => {
            if (data.rows.length > 0) {
              let respostas: any[] = [];
              for (var i = 0; i < data.rows.length; i++) {
                var item = data.rows.item(i);
                //console.log('questao: ', questao);
                let questaoResposta = new QuestaoResposta();
                questaoResposta.id = item.id;
                questaoResposta.id_questao = item.id_questao;
                questaoResposta.id_assunto = item.id_assunto;
                questaoResposta.letraOpcao = item.letraOpcao;
                questaoResposta.respostaCerta = item.respostaCerta;
                questaoResposta.texto_pt = item.texto_pt;
                questaoResposta.texto_en = item.texto_en;
                questaoResposta.preencherLetraOpcaoTexto();
                respostas.push(questaoResposta);
              }
              console.log(`getAllByQuestao(${idQuestao}) respostas: `, respostas);
              return respostas;
            } else {
              return [];
            }
          })
          .catch((e) => console.error("Erro executeSql getAllByQuestao(idQuestao)", e));
      })
      .catch((e) => console.error('Erro getAllByQuestao(idQuestao)', e));
  } 

}

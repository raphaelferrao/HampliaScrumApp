import { NUM_VERSAO_CARGA, NUM_VERSAO_ULTIMA_CARGA, NUM_VERSAO_ATUAL, GLOSSARIO } from './../../util/constantes';
import { Http } from '@angular/http';
import { Injectable } from '@angular/core';
import { SQLiteObject, SQLite } from '@ionic-native/sqlite';
import { SQLitePorter } from '@ionic-native/sqlite-porter';
import 'rxjs/add/operator/map';
import { BehaviorSubject } from 'rxjs/Rx';
import { Storage } from '@ionic/storage';

@Injectable()
export class DatabaseProvider {

  database: SQLiteObject;
  private databaseReady: BehaviorSubject<boolean>;
 
  /**
   * Cria um banco caso não exista ou pega um banco existente com o nome no parametro
   */
  public getDB() {
    return this.sqlite.create({
      name: 'scrum.db',
      location: 'default'
    });
  }

  constructor(public sqlitePorter: SQLitePorter, 
              private storage: Storage, 
              private sqlite: SQLite, 
              private http: Http) {
    
    this.createDatabase();
  }

  /**
   * Cria a estrutura inicial do banco de dados
   */
  public createDatabase() {
    this.databaseReady = new BehaviorSubject(false);
    return this.getDB()
      .then((db: SQLiteObject) => {
        this.database = db;
        this.storage.get(NUM_VERSAO_ULTIMA_CARGA).then(val => {
          if (val == NUM_VERSAO_CARGA) {
            console.log("Database já atualizada!");
            this.databaseReady.next(true);
          } else {
            console.log("Database será atualizada!");
            this.fillDatabase();
          }
          console.log("database: ", this.database);
        }); 
      })
      .catch(e => console.log(e));
  }  

  fillDatabase() {
    this.storage.remove(GLOSSARIO);
    this.http.get('assets/database/dummyDB.sql')
      .map(res => (res as any).text())
      .subscribe(sql => {
        this.sqlitePorter.importSqlToDb(this.database, sql)
          .then(data => {
            this.databaseReady.next(true);
            this.storage.set(NUM_VERSAO_ULTIMA_CARGA, NUM_VERSAO_ATUAL);
            console.log("Database filled");
          })
          .catch(e => console.error(e));
      });
  }

}

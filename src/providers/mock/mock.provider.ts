import { Questao } from './../../models/questao.model';
import { Injectable } from '@angular/core';

/*
  Generated class for the MockProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class MockProvider {

  private qA1: Array<Questao> = new Array<Questao>();
  private qA2: Array<Questao> = new Array<Questao>();
  private qA3: Array<Questao> = new Array<Questao>();
  private qA4: Array<Questao> = new Array<Questao>();
  private qA5: Array<Questao> = new Array<Questao>();

  assuntos = [
    { id: 1, nome_pt: 'Noções Básicas', nome_en: 'Scrum Basics' },
    { id: 2, nome_pt: 'Time Scrum', nome_en: 'The Scrum Team' },
    { id: 3, nome_pt: 'Eventos do Scrum', nome_en: 'Scrum Events' },
    { id: 4, nome_pt: 'Artefatos do Scrum', nome_en: 'Scrum Artefacts' },
    { id: 5, nome_pt: 'Transparência dos Artefatos', nome_en: 'Artifact Transparency' },
  ];

  questoes: Array<Questao> = [
    {id: 1, id_assunto: 1, texto_pt: 'O que é Scrum?', texto_en: 'What is Scrum?', ordem: 1,
     respostas: [
                  {id: 1, id_assunto: 1, id_questao: 1, texto_pt: 'Processo que pode ser usado para gerenciar produtos complexos.', texto_en: 'Process that can be used to manage complex products.', letraOpcao: 'A', respostaCerta: 0},
                  {id: 2, id_assunto: 1, id_questao: 1, texto_pt: 'Framework que pode ser usado para gerenciar produtos complexos.', texto_en: 'Framework that can be used to manage complex products.', letraOpcao: 'B', respostaCerta: 1},
                  {id: 3, id_assunto: 1, id_questao: 1, texto_pt: 'Técnica que pode ser usada para gerenciar produtos complexos.', texto_en: 'Technique that can be used to manage complex products.', letraOpcao: 'C', respostaCerta: 0},
                  {id: 4, id_assunto: 1, id_questao: 1, texto_pt: 'Metodologia que pode ser usada para gerenciar produtos complexos.', texto_en: 'Methodology that can be used to manage complex products.', letraOpcao: 'D', respostaCerta: 0},
                ]
    },
    {id: 2, id_assunto: 1, texto_pt: 'No que o framework consiste?', texto_en: 'What does the framework consists of?', ordem: 2,
     respostas: [
                  {id: 1, id_assunto: 1, id_questao: 2, texto_pt: 'Regras', texto_en: 'Rules', letraOpcao: 'A', respostaCerta: 0},
                  {id: 2, id_assunto: 1, id_questao: 2, texto_pt: 'Artefatos', texto_en: 'Artifacts', letraOpcao: 'B', respostaCerta: 0},
                  {id: 3, id_assunto: 1, id_questao: 2, texto_pt: 'Time Scrum', texto_en: 'Scrum Team', letraOpcao: 'C', respostaCerta: 0},
                  {id: 4, id_assunto: 1, id_questao: 2, texto_pt: 'Papéis', texto_en: 'Roles', letraOpcao: 'D', respostaCerta: 0},
                  {id: 5, id_assunto: 1, id_questao: 2, texto_pt: 'Eventos', texto_en: 'Events', letraOpcao: 'E', respostaCerta: 0},
                  {id: 6, id_assunto: 1, id_questao: 2, texto_pt: 'Opções A, B e C', texto_en: 'Options A, B and C', letraOpcao: 'F', respostaCerta: 0},
                  {id: 7, id_assunto: 1, id_questao: 2, texto_pt: 'Opções A, B, C, D e E', texto_en: 'Options A, B, C, D and E', letraOpcao: 'G', respostaCerta: 1},
                ]
    },
    {id: 3, id_assunto: 1, texto_pt: 'Em qual das seguintes alternativas o framework Scrum pode ser aplicado?', texto_en: 'On which of the following can the Scrum framework be applied?', ordem: 3,
     respostas: [
                  {id: 1, id_assunto: 1, id_questao: 2, texto_pt: 'Desenvolver e manter a nuvem e outros ambientes operacionais para uso do produto.', texto_en: 'Develop and sustain Cloud and other operational environments for product use.', letraOpcao: 'A', respostaCerta: 0},
                  {id: 2, id_assunto: 1, id_questao: 2, texto_pt: 'Pesquisar e identificar mercados viáveis, tecnologias e capacidades de produtos.', texto_en: 'Research and identify viable markets, technologies and product capabilities.', letraOpcao: 'B', respostaCerta: 0},
                  {id: 3, id_assunto: 1, id_questao: 2, texto_pt: 'Liberar produtos e aprimoramentos, com a freqüência de várias vezes por dia.', texto_en: 'Release products and enhancements, as frequently as many times per day.', letraOpcao: 'C', respostaCerta: 0},
                  {id: 4, id_assunto: 1, id_questao: 2, texto_pt: 'Sustentar e renovar produtos.', texto_en: 'Sustain and renew products.', letraOpcao: 'D', respostaCerta: 0},
                  {id: 5, id_assunto: 1, id_questao: 2, texto_pt: 'Desenvolver produtos e aprimoramentos.', texto_en: 'Develop products and enhancements.', letraOpcao: 'E', respostaCerta: 0},
                  {id: 6, id_assunto: 1, id_questao: 2, texto_pt: 'Todas as anteriores.', texto_en: 'All of the above.', letraOpcao: 'F', respostaCerta: 1},
                ]
    },
  ]

  constructor() {

  }

  public getAllAssuntos() {
    return this.assuntos;
  }

  public getAllQuestoesByAssunto(idAssunto: number) {

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

    const ehIgual = (item) => {
      return item.id_assunto == idAssunto;
    };

    const questoesFiltered = this.questoes.filter( ehIgual );    
    if (questoesFiltered && questoesFiltered.length>0) {
      return this.embaralhaQuestoes(idAssunto, questoesFiltered);
    } else {
      return new Array<Questao>();
    }    
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

  public countAllQuestoesByAssunto(idAssunto: number) {
    const ehIgual = (item) => {
      return item.id_assunto == idAssunto;
    };

    const questoesFiltered = this.questoes.filter( ehIgual );  
    if (questoesFiltered) {
      return questoesFiltered.length;
    } else {
      return 0;
    }
  }

  public getQuestaoByAssuntoOrdem(idAssunto: number, numOrdem: number) : Questao {
    const ehIgual = (item) => {
      return item.id_assunto == idAssunto && item.ordem == numOrdem;
    };

    const questoesFiltered = this.questoes.filter( ehIgual );   

    if (questoesFiltered && questoesFiltered.length>0) {
      let questao: Questao = questoesFiltered[0];
      if (questao) {
        questao.respostas.forEach(element => {
          element.letraOpcaoTexto_en = `${element.letraOpcao}) ${element.texto_en}`;
          element.letraOpcaoTexto_pt = `${element.letraOpcao}) ${element.texto_pt}`;
        });
      }
      return questao;
    } else {
      return null;
    }
  }


}

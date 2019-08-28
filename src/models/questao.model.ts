import { QuestaoResposta } from './questaoResposta.model';

export class Questao {
    id: number;
    id_assunto: number;
    texto_pt: string;
    texto_en: string;
    ordem: number;
    respostas: Array<QuestaoResposta>;
  }
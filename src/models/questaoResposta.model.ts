export class QuestaoResposta {
    id: number;
    id_questao: number;
    id_assunto: number;
    texto_pt: string;
    texto_en: string;
    letraOpcao: string;
    letraOpcaoTexto_en?: string;
    letraOpcaoTexto_pt?: string;
    respostaCerta: number;

    public preencherLetraOpcaoTexto?() {
      const texto_en = `${this.letraOpcao}) ${this.texto_en}`;
      console.log('letraOpcaoTexto_En: ', texto_en);
      this.letraOpcaoTexto_en = texto_en;

      const texto_pt = `${this.letraOpcao}) ${this.texto_pt}`;
      console.log('letraOpcaoTexto_pt: ', texto_pt);
      this.letraOpcaoTexto_pt = texto_pt;
    }

  }
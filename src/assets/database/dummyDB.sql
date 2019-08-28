DROP TABLE IF EXISTS assunto;
DROP TABLE IF EXISTS questao;
DROP TABLE IF EXISTS questao_resposta;

CREATE TABLE IF NOT EXISTS assunto
    (id INTEGER PRIMARY KEY, nome_pt TEXT, nome_en TEXT);
CREATE TABLE IF NOT EXISTS questao
    (id_assunto INTEGER, id INTEGER, texto_pt TEXT, texto_en TEXT, ordem INTEGER, PRIMARY KEY (id_assunto, id));
CREATE TABLE IF NOT EXISTS questao_resposta
    (id_assunto INTEGER, id_questao INTEGER, letraOpcao CHAR(1), texto_pt TEXT, texto_en TEXT, respostaCerta INTEGER, PRIMARY KEY (id_assunto, id_questao, letraOpcao));

DELETE FROM assunto;
DELETE FROM questao;
DELETE FROM questao_resposta;

/*
ASSUNTO 1
*/

INSERT INTO assunto(id, nome_pt, nome_en) VALUES (1, 'Noções Básicas', 'Scrum Basics');

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (1, 1, 1, 'O que é Scrum?', 'What is Scrum?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(1, 1, 'A', 'Processo que pode ser usado para gerenciar produtos complexos.', 'Process that can be used to manage complex products.', 0),
(1, 1, 'B', 'Framework que pode ser usado para gerenciar produtos complexos.', 'Framework that can be used to manage complex products.', 1),
(1, 1, 'C', 'Técnica que pode ser usada para gerenciar produtos complexos.', 'Technique that can be used to manage complex products.', 0),
(1, 1, 'D', 'Metodologia que pode ser usada para gerenciar produtos complexos.', 'Methodology that can be used to manage complex products.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (1, 2, 2, 'No que o framework consiste?', 'What does the framework consists of?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(1, 2, 'A', 'Regras', 'Rules', 0),
(1, 2, 'B', 'Artefatos', 'Artifacts', 0),
(1, 2, 'C', 'Time Scrum', 'Scrum Team', 0),
(1, 2, 'D', 'Papéis', 'Roles', 0),
(1, 2, 'E', 'Eventos', 'Events', 0),
(1, 2, 'F', 'Opções A, B e C', 'Options A, B and C', 0),
(1, 2, 'G', 'Opções A, B, C, D e E', 'Options A, B, C, D and E', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (1, 3, 3, 'Em qual das seguintes alternativas o framework Scrum pode ser aplicado?', 'On which of the following can the Scrum framework be applied?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(1, 3, 'A', 'Desenvolver e manter a nuvem e outros ambientes operacionais para uso do produto.', 'Develop and sustain Cloud and other operational environments for product use.', 0),
(1, 3, 'B', 'Pesquisar e identificar mercados viáveis, tecnologias e capacidades de produtos.', 'Research and identify viable markets, technologies and product capabilities.', 0),
(1, 3, 'C', 'Liberar produtos e aprimoramentos, com a freqüência de várias vezes por dia.', 'Release products and enhancements, as frequently as many times per day.', 0),
(1, 3, 'D', 'Sustentar e renovar produtos.', 'Sustain and renew products.', 0),
(1, 3, 'E', 'Desenvolver produtos e aprimoramentos.', 'Develop products and enhancements.', 0),
(1, 3, 'F', 'Todas as anteriores.', 'All of the above.', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (1, 4, 4, 'Qual é a essência do Scrum?', 'What is the essence of Scrum?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(1, 4, 'A', 'Pequena equipe de pessoas.', 'Small team of People.', 1),
(1, 4, 'B', 'Guia Scrum', 'Scrum Guide.', 0),
(1, 4, 'C', 'Regras do Scrum.', 'Scrum Rules.', 0),
(1, 4, 'D', 'Artefatos Scrum', 'Scrum Artifacts.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (1, 5, 5, "De acordo com o guia do Scrum, como se referem as palavras 'Develop' e 'Development'?", "As per Scrum guide what do the words 'Develop' and 'Development' refer to?");

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(1, 5, 'A', 'Trabalho complicado.', 'Complicated Work.', 0),
(1, 5, 'B', 'Trabalho simples.', 'Simple Work.', 0),
(1, 5, 'C', 'Trabalho não tão complexo.', 'Not so complex work.', 0),
(1, 5, 'D', 'Trabalho complexo', 'Complex work.', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (1, 6, 6, 'O Scrum é baseado em qual processo?', 'Is Scrum founded on which process?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(1, 6, 'A', 'Incremental', 'Incremental', 0),
(1, 6, 'B', 'Iterativo', 'Iterative', 0),
(1, 6, 'C', 'Empírico', 'Empirical', 1),
(1, 6, 'D', 'Adaptativo', 'Adaptive', 0),
(1, 6, 'E', 'Ágil', 'Agile', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (1, 7, 7, 'Quais dos seguintes são pilares do Scrum?', 'Which of the below are pillars of Scrum?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(1, 7, 'A', 'Coragem', 'Courage', 0),
(1, 7, 'B', 'Transparência', 'Transparency', 0),
(1, 7, 'C', 'Inspeção', 'Inspection', 0),
(1, 7, 'D', 'Honestidade', 'Honesty', 0),
(1, 7, 'E', 'Adaptação', 'Adaption', 0),
(1, 7, 'F', 'Todas as anteriores', 'All of the above', 0),
(1, 7, 'G', 'Somente B, C e E', 'Only B, C and E', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (1, 8, 8, 'Com que frequência a inspeção deve ser realizada?', 'How frequently should inspection be performed?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(1, 8, 'A', 'Todos os dias durante a Daily Scrum.', 'Every day during Daily Scrum.', 0),
(1, 8, 'B', 'Durante Sprint Retrospective.', 'During Sprint Retrospective.', 0),
(1, 8, 'C', 'Durante Sprint Review.', 'During Sprint Review.', 0),
(1, 8, 'D', 'Durante Sprint Planning.', 'During Sprint Planning.', 0),
(1, 8, 'E', 'Freqüentemente. Mas não tão frequente para atrapalhar o trabalho.', 'Frequently. But not too frequent that it gets in the way of work.', 1),
(1, 8, 'F', 'Todas as anteriores.', 'All of the above.', 0),
(1, 8, 'G', 'Nenhuma das anteriores.', 'All of the above.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (1, 9, 9, 'Durante a inspeção, observa-se que poucos aspectos de um processo ultrapassam os limites aceitáveis. Qual ação deve ser tomada agora?', 'During inspection it is observed few aspects of a process go beyond acceptable limits. What course of action must be taken now?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(1, 9, 'A', 'O processo no qual o desvio é observado deve ser terminado.', 'The process in which deviation is observed must be terminated.', 0),
(1, 9, 'B', 'O processo deve ser terminado temporariamente e o ajuste deve ser feito mais tarde, quando o tempo permitir.', 'The process must be temporarily terminated and adjustment must be made later on when time permits.', 0),
(1, 9, 'C', 'Nenhuma ação deve ser tomada.', 'No action should be taken.', 0),
(1, 9, 'D', 'O ajuste deve ser feito o mais breve possível.', 'Adjustment shall be made as soon as possible.', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (1, 10, 10, 'Qual dos seguintes não é um evento formal do Scrum?', 'Which of the following is not formal Scrum event?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(1, 10, 'A', 'Sprint Retrospective', 'Sprint Retrospective', 0),
(1, 10, 'B', 'Refinamento do Sprint Backlog', 'Sprint Backlog refinement', 1),
(1, 10, 'C', 'Sprint Planning', 'Sprint Planning', 0),
(1, 10, 'D', 'Daily Scrum', 'Daily Scrum', 0),
(1, 10, 'E', 'Sprint Review', 'Sprint Review', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (1, 11, 11, 'De acordo com o Scrum, qual(is) do(s) seguinte(s) é(são) valor(es) do Scrum?', 'As per Scrum, which of the following is/are Scrum values?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(1, 11, 'A', 'Coragem', 'Courage', 0),
(1, 11, 'B', 'Franqueza', 'Openness', 0),
(1, 11, 'C', 'Foco', 'Focus', 0),
(1, 11, 'D', 'Comprometimento', 'Commitment', 0),
(1, 11, 'E', 'Respeito', 'Respect', 0),
(1, 11, 'F', 'Todas as anteriores', 'All of the above', 1),
(1, 11, 'G', 'Nenhuma das anteriores', 'None of the above', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (1, 12, 12, 'Conforme Scrum: Transparência, Inspeção e Adaptação são ...', 'As per Scrum: Transparency, Inspection and Adaptation are ...');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(1, 12, 'A', 'Valores do Scrum', 'Scrum Values', 0),
(1, 12, 'B', 'Eventos do Scrum', 'Scrum Events', 0),
(1, 12, 'C', 'Pilares do Scrum', 'Pillars of Scrum', 1),
(1, 12, 'D', 'Nenhuma das anteriores', 'None of the above', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (1, 13, 13, 'Qual(is) do(s) seguinte(s) não é(são) valor(es) do Scrum?', 'Which of the following is/are not Scrum value(s)?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(1, 13, 'A', 'Honestidade', 'Honesty', 0),
(1, 13, 'B', 'Coragem', 'Courage', 0),
(1, 13, 'C', 'Cortesia', 'Courteous', 0),
(1, 13, 'D', 'Somente A e C', 'Only A and C', 1),
(1, 13, 'E', 'A, B e C', 'A, B and C', 0),
(1, 13, 'F', 'Nenhuma das anteriores', 'None of the above', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (1, 14, 14, 'Uma organização planeja implementar seu próprio modelo do Scrum. O que é provável que aconteça em tal cenário?', 'An organization plans to implement its own flavor of Scrum. What is likely to happen in such a scenario?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(1, 14, 'A', 'Benefícios do Scrum podem ser perdidos.', 'Benefits of Scrum may be lost.', 0),
(1, 14, 'B', 'A administração está mais confiante, pois planeja implementar seu próprio sabor do Scrum.', 'Management is more confident as they are planning to implement their own flavor of Scrum.', 0),
(1, 14, 'C', 'A maioria dos processos existentes (Não Scrum) seria implementada e pouquíssimas mudanças podem realmente acontecer.', 'Most of the existing (Not Scrum) processes would be implemented and very little changes may actually happen.', 0),
(1, 14, 'D', 'Todas as anteriores.', 'All of the above.', 1);

/*
ASSUNTO 2
*/

INSERT INTO assunto(id, nome_pt, nome_en) VALUES (2, 'Time Scrum', 'The Scrum Team');

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 1, 1, 'O Time Scrum é composto por ...', 'The Scrum Team comprises of ...');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 1, 'A', 'Development Team, Product Owner e Scrum Master.', 'Development Team, Product Owner and Scrum Master.', 1),
(2, 1, 'B', 'Development Team, PMO e Scrum Master.', 'Development Team, PMO and Scrum Master.', 0),
(2, 1, 'C', 'Development Team, Testing Team, Scrum Master e Product Owner.', 'Development Team, Testing Team, Scrum Master and Product Owner.', 0),
(2, 1, 'D', 'Development Team, Product Owner e Gerente de Projetos.', 'Development Team, Product Owner and Project Manager.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 2, 2, 'Quem é responsável por maximizar o valor do produto?', 'Who is responsible for maximizing the value of the product?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 2, 'A', 'Development Team', 'Development Team', 0),
(2, 2, 'B', 'Product Owner', 'Product Owner', 1),
(2, 2, 'C', 'Scrum Team', 'Scrum Team', 0),
(2, 2, 'D', 'Scrum Master', 'Scrum Master', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 3, 3, 'Quem tem a responsabilidade de gerenciar o Product Backlog?', 'Who has the responsibility for managing the Product Backlog?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 3, 'A', 'Development Team', 'Development Team', 0),
(2, 3, 'B', 'Product Owner e Scrum Master', 'Product Owner and Scrum Master', 0),
(2, 3, 'C', 'Somente Product Owner', 'Only Product Owner', 1),
(2, 3, 'D', 'Scrum Master e Development Team', 'Scrum Master and Development Team', 0),
(2, 3, 'E', 'Somente Scrum Master', 'Only Scrum Master', 0),
(2, 3, 'F', 'Nenhuma das anteriores', 'None of the above', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 4, 4, 'O que o gerenciamento do Product Backlog inclui?', 'What does Product Backlog management include?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 4, 'A', 'Expressar claramente os itens do Product Backlog', 'Clearly expressing Product Backlog items.', 0),
(2, 4, 'B', 'Ordenar os itens no Product Backlog.', 'Ordering the items in the Product Backlog.', 0),
(2, 4, 'C', 'Otimizar o valor do trabalho que o Development Team executa.', 'Optimizing the value of the work the Development Team performs.', 0),
(2, 4, 'D', 'Garantir que o Product Backlog esteja visível, transparente e claro.', 'Ensuring that the Product Backlog is visible, transparency and clear.', 0),
(2, 4, 'E', 'Garantir que o Development Team entenda os itens do Product Backlog da forma necessária.', 'Ensuring the Development Team understands items in the Product Backlog to the level needed.', 0),
(2, 4, 'F', 'Todas as anteriores.', 'All of the above.', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 5, 5, 'O Development Team pode gerenciar o Product Backlog?', 'Can the Development Team manage Product Backlog?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 5, 'A', 'Não. Somente o Product Owner pode gerenciar o Product Backlog.', 'No. Only Product Owner can manage Product Backlog.', 0),
(2, 5, 'B', 'Sim. Mas a responsabilidade continua com o Product Owner.', 'Yes. But accountability remains with Product Owner.', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 6, 6, 'Qual é o número máximo de Product Owner que um Time Scrum pode ter?', 'What is the maximum number of Product Owner a Scrum Team may have?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 6, 'A', 'Depende da complexidade do produto.', 'Depends on the complexity of the product.', 0),
(2, 6, 'B', 'Metade do número de membros do Development Team.', 'Half of the number of members in the Development Team.', 0),
(2, 6, 'C', '2', '2', 0),
(2, 6, 'D', '1', '1', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 7, 7, 'Quem cria o incremento do produto?', 'Who creates the Product Increment?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 7, 'A', 'Scrum Team', 'Scrum Team', 0),
(2, 7, 'B', 'Development Team', 'Development Team', 1),
(2, 7, 'C', 'Scrum Master', 'Scrum Master', 0),
(2, 7, 'D', 'Product Owner', 'Product Owner', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 8, 8, 'Quem pode dizer ao Development Team como transformar o Product Backlog em incrementos de funcionalidade potencialmente liberável?', 'Who can tell the Development Team how to turn Product Backlog into increments of potentially releasable functionality?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 8, 'A', 'Gerente de Projetos', 'Project Management', 0),
(2, 8, 'B', 'CEO', 'CEO', 0),
(2, 8, 'C', 'Scrum Master', 'Scrum Master', 0),
(2, 8, 'D', 'Product Owner', 'Product Owner', 0),
(2, 8, 'E', 'Nenhuma das anteriores', 'None of the above', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 9, 9, 'Qual das seguintes opções não é uma característica do Development Team?', 'Which of the following is not a characteristic of the Development Team?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 9, 'A', 'Auto-organização.', 'Self organizing.', 0),
(2, 9, 'B', 'Multi funcional', 'Cross functional.', 0),
(2, 9, 'C', 'Títulos específicos para membros do Development Team.', 'Specific titles for Development Team members.', 1),
(2, 9, 'D', 'A responsabilidade pertence ao Development Team como um todo.', 'Accountability belongs to Development Team as a whole.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 10, 10, 'Qual é o tamanho ideal do Development Team?', 'What is the optimum size of the Development Team?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 10, 'A', '3 a 9 membros.', '3 to 9 members.', 1),
(2, 10, 'B', '3 a 11 membros.', '3 to 11 members.', 0),
(2, 10, 'C', 'Depende da complexidade do trabalho.', 'Depends on the complexity of work.', 0),
(2, 10, 'D', '10 membros.', '10 members.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 11, 11, 'Scrum Master pode fazer parte do Development Team?', 'Scrum Master can be part of the Development Team?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 11, 'A', 'Verdadeiro', 'True', 1),
(2, 11, 'B', 'Falso', 'False', 0); 

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 12, 12, 'Product Owner não pode fazer parte do Development Team?', 'Product Owner cannot be part of the Development Team?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 12, 'A', 'Verdadeiro', 'True', 0),
(2, 12, 'B', 'Falso', 'False', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 13, 13, 'Suponha que o Product Owner e o Scrum Master façam parte do Development Team e o tamanho do o Development Team seja 9. Qual é o tamanho do Scrum Team?', 'Assume Product Owner and Scrum Master are part of the Development Team and Development Team size is 9. What is the size of Scrum Team?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 13, 'A', '11', '11', 0),
(2, 13, 'B', '7', '7', 0),
(2, 13, 'C', '9', '9', 1),
(2, 13, 'D', 'Nenhuma das anteriores', 'None of the above', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 14, 14, 'Pode haver um Development Team de 10 membros.', 'There can be a Development Team of 10 members.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 14, 'A', 'Verdadeiro', 'True', 1),
(2, 14, 'B', 'Falso', 'False', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 15, 15, 'Qual é a principal responsabilidade do Scrum Master?', 'What is the main responsibility of the Scrum Master?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 15, 'A', 'Montar o Scrum Team.', 'Build the Scrum Team.', 0),
(2, 15, 'B', 'Promover e apoiar o Scrum, conforme definido no Guia Scrum.', 'Promoting and supporting Scrum as defined in the Scrum Guide.', 1),
(2, 15, 'C', 'Montar o Development Team.', 'Build the Development Team.', 0),
(2, 15, 'D', 'Atuar como um líder de equipe para o Development Team.', 'Act as a team leader for the Development Team.', 0),
(2, 15, 'E', 'Nenhuma das anteriores.', 'All of the above.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 16, 16, 'Preencha o espaço em branco. <br> Scrum Master é um ______ para o Scrum Team.', 'Fill the blank. <br>Scrum Master is a ______ for the Scrum Team.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 16, 'A', 'Servidor', 'Servant', 0),
(2, 16, 'B', 'Gerente', 'Manager', 0),
(2, 16, 'C', 'Líder do time', 'Team Leader', 0),
(2, 16, 'D', 'Líder Servidor', 'Servant Leader', 1),
(2, 16, 'E', 'Nenhuma das anteriores', 'None of the above', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 17, 17, 'Qual das seguintes opções não é um serviço fornecido pelo Scrum Master ao Product Owner?', 'Which of the following is not a service provided by the Scrum Master to the Product Owner?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 17, 'A', 'Encontrar técnicas para o gerenciamento eficaz do Product Backlog.', 'Finding techniques for effective Product Backlog management.', 0),
(2, 17, 'B', 'Garantir que o Product Owner saiba como organizar o Product Backlog para maximizar o valor.', 'Ensuring the Product Owner knows how to arrange the Product Backlog to maximize value.', 0),
(2, 17, 'C', 'Entender e praticar agilidade.', 'Understanding and practicing agility.', 0),
(2, 17, 'D', 'Entender o planejamento de produtos em um ambiente empírico.', 'Understanding product planning in an empirical environment.', 0),
(2, 17, 'E', 'Causar mudanças que aumentam a produtividade do Scrum Team.', 'Causing change that increases the productivity of the Scrum Team.', 1),
(2, 17, 'F', 'Ajudar o Scrum Team a entender a necessidade de itens claros e concisos do Product Backlog.', 'Helping the Scrum Team understand the need for clear and concise Product Backlog items.', 0),
(2, 17, 'G', 'Facilitar eventos Scrum.', 'Facilitating Scrum events.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 18, 18, 'Qual(is) do(s) seguinte(s) é(são) o(s) serviço(s) fornecido(s) pelo Scrum Master para o Development Team?', 'Which of the following is(are) service(s) provided by the Scrum Master to the Development Team?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 18, 'A', 'Coaching do Development Team em auto-organização e multi-funcionalidade.', 'Coaching the Development Team in self-organization and cross-functionality.', 0),
(2, 18, 'B', 'Ajudar o Development Team a criar produtos de alto valor.', 'Helping the Development Team to create high-value products.', 0),
(2, 18, 'C', 'Remover os impedimentos para o progresso do Development Team.', "Removing impediments to the Development Team's progress.", 0),
(2, 18, 'D', 'Facilitar eventos Scrum conforme solicitado ou necessário.', 'Facilitating Scrum events as requested or needed.', 0),
(2, 18, 'E', 'Coaching o Development Team em ambientes organizacionais em que o Scrum ainda não é totalmente adotado e compreendido.', 'Coaching the Development Team in organizational environments in which Scrum is not yet fully adopted and understood.', 0),
(2, 18, 'F', 'Todas as anteriores.', 'All of the above.', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 19, 19, 'Qual(is) do(s) seguinte(s) é(são) o(s) serviço(s) fornecido(s) pelo Scrum Master para a Organização?', 'Which of the following is(are) service(s) provided by the Scrum Master to the Organization?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 19, 'A', 'Facilitar eventos Scrum conforme solicitado ou necessário.', 'Facilitating Scrum events as requested or needed.', 0),
(2, 19, 'B', 'Entender e praticar agilidade.', 'Understanding and practicing agility.', 0),
(2, 19, 'C', 'Coaching o Development Team.', 'Coaching the Development Team.', 0),
(2, 19, 'D', 'Ajudar o Development Team a criar produtos de alto valor.', 'Helping the Development Team to create high-value products.', 0),
(2, 19, 'E', 'Garantir que os objetivos, o escopo e o domínio do produto seja compreendido por todos no Scrum Team.', 'Ensuring the goals, scope and product domain are understood by everyone on the Scrum Team.', 0),
(2, 19, 'F', 'Todas as anteriores.', 'All of the above.', 1),
(2, 19, 'G', 'Nenhuma das anteriores.', 'All of the above.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 20, 20, 'Não há papel de Gerente de Projetos no Scrum.', 'There is no Project Management role in Scrum.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 20, 'A', 'Verdadeiro', 'True', 1),
(2, 20, 'B', 'Falso', 'False', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 21, 21, 'Quem deve conhecer a evolução dos objetivos de negócios ou entrega?', 'Who should known the most about the progress toward a business objectives or a release?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 21, 'A', 'Scrum Master', 'Scrum Master', 0),
(2, 21, 'B', 'Product Owner', 'Product Owner', 1),
(2, 21, 'C', 'Development Team', 'Development Team', 0),
(2, 21, 'D', 'Todas as anteriores', 'All of the above', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 22, 22, 'Quanto trabalho o Development Team deve fazer para um item do Product Backlog que ele selecionar para um Sprint?', 'How much work must a Development Team do to a Product Backlog item it selects for a Sprint?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 22, 'A', 'Design, Programação e Teste.', 'Design, Programming and Testing.', 0),
(2, 22, 'B', 'Tanto quanto pode caber no Sprint.', 'As much as it can fit into the Sprint.', 0),
(2, 22, 'C', 'Todo o trabalho de desenvolvimento e pelo menos alguns testes.', 'All development work and at least some testing.', 0),
(2, 22, 'D', 'Por mais que tenha dito ao Product Owner, ele terá feito para cada item selecionado do Product Backlog em conformidade com a "Definição de Feito".', 'As much as it has told the Product Owner will be done for every Product Backlog item it selects in conformance with the "Definition of Done".', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 23, 23, 'Durante uma Sprint, o CEO da Organização solicita que o Development Team adicione um novo item a Sprint em andamento. O que deve fazer o Development Team?', 'During a Sprint the CEO of the Organization asks the Development Team to add a new item to the ongoing Sprint. What should be the Development Team do?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 23, 'A', 'Obedecer o CEO e adicionar o item a Sprint atual.', 'Obey the CEO and add the item in the current Sprint.', 0),
(2, 23, 'B', 'Peça ao Product Owner para trabalhar com o CEO.', 'Ask the Product Owner to work with CEO.', 1),
(2, 23, 'C', 'Adicionar o item na próxima Sprint.', 'Add the item in the next Sprint.', 0),
(2, 23, 'D', 'Adicionar o item a Sprint atual e remover um item de tamanho igual.', 'Add the item in the current Sprint and remove an item of equal size.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 24, 24, 'Cada membro do Development Team é o único proprietário de itens específicos do Sprint Backlog com base no critério do Product Owner.', "Each Development Team member becomes the sole owner of specific Sprint Backlog items based on Product Owner's discretion.");

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 24, 'A', 'Verdadeiro', 'True', 0),
(2, 24, 'B', 'Falso', 'False', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 25, 25, 'Qual é o papel do gerenciamento no Scrum?', 'What is the role Management in Scrum?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 25, 'A', 'Monitorar a produtividade do Scrum Team.', "Monitor Scrum Team's productivity.", 0),
(2, 25, 'B', 'Monitorar os níveis de pessoas em cada Scrum Team.', 'Monitor staffing levels within each Scrum Team.', 0),
(2, 25, 'C', 'Identificar e remover pessoas que não estão entregando.', 'Identify and remove people who are not delivering.', 0),
(2, 25, 'D', 'Apoiar o Scrum Master e o Product Owner para obter melhores resultados.', 'Support Scrum Master and Product Owner for achieving better results.', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 26, 26, 'Qual(is) é(são) a(s) maneira(s) principal(is) pela(s) qual(is) um Scrum Master mantém um Development Team trabalhando em seu mais alto nível de produtividade?', 'What is(are) the primary way(s) a Scrum Master keeps a Development Team working at its highest level of productivity?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 26, 'A', 'Remover impedimentos que atrapalham o Development Team.', 'By removing impediments that hinder the Development Team.', 0),
(2, 26, 'B', 'Iniciar e encerrar as reuniões no horário adequado.', 'By starting and ending the meetings at the proper time.', 0),
(2, 26, 'C', 'Manter recursos de alto valor no Product Backlog.', 'By keeping high value features high in the Product Backlog.', 0),
(2, 26, 'D', 'Facilitar as decisões do Development Team.', 'By facilitating Development Team decisions.', 0),
(2, 26, 'E', 'Todas as anteriores.', 'All of the above.', 0),
(2, 26, 'F', 'Opções A e D.', 'Options A and D.', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 27, 27, 'Quem tem a palavra final sobre a ordem dos itens do Product Backlog?', 'Who has the final say on the order of Product Backlog items?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 27, 'A', 'Scrum Master', 'Scrum Master', 0),
(2, 27, 'B', 'Product Owner', 'Product Owner', 1),
(2, 27, 'C', 'CEO da organização', 'CEO of the Organization', 0),
(2, 27, 'D', 'Development Team', 'Development Team', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 28, 28, 'O Development Team deve ter todas as habilidades necessárias para:', 'The Development Team should have all the skills needed to:');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 28, 'A', 'Transformar os itens do Product Backlog que ele selecionar em um incremento de funcionalidade potencialmente entregável do produto.', 'Turn the Product Backlog items it selects into an increment of potentially releasable product functionality.', 1),
(2, 28, 'B', 'Concluir o projeto como estimado quando a data e o custo estiverem comprometidos com o Product Owner.', 'Complete the project as estimated when the date and cost are committed to the Product Owner.', 0),
(2, 28, 'C', 'Fazer todo o trabalho de desenvolvimento, exceto para testes especializados que exigem ferramentas e ambientes adicionais.', 'Do all of the development work, except for specialized testing that requires additional tools and environments.', 0),
(2, 28, 'D', 'Todas as anteriores.', 'All of the above.', 0),
(2, 28, 'E', 'Nenhuma das anteriores.', 'All of the above.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (2, 29, 29, 'Qual(is) é(são) a(s) coisa(s) esperada(s) do Development Team na primeira Sprint?', 'What is(are) things(s) is(are) expected of the Development Team in the first Sprint?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(2, 29, 'A', 'Desenvolver um plano para o resto do lançamento.', 'Develop a plan for the rest of the release.', 1),
(2, 29, 'B', 'Entregar um incremento de software entregável.', 'Deliver an increment of releasable software.', 0),
(2, 29, 'C', 'Determinaar a arquitetura e a infraestrutura completas do produto.', 'Determine the complete architecture and infrastructure for the product.', 0),
(2, 29, 'D', 'Desenvolver e entregar pelo menos uma funcionalidade.', 'Develop and deliver at least one piece of functionality.', 0),
(2, 29, 'E', 'Todas as anteriores.', 'All of the above.', 0),
(2, 29, 'F', 'B e D.', 'B and D.', 0),
(2, 29, 'G', 'A e C.', 'A and C.', 0);

/*
ASSUNTO 3
*/

INSERT INTO assunto(id, nome_pt, nome_en) VALUES (3, 'Eventos do Scrum', 'Scrum Events');

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 1, 1, 'Qual dos seguintes não é um evento formal do Scrum?', 'Which of the following is not a formal Scrum Event?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 1, 'A', 'Sprint', 'Sprint', 0),
(3, 1, 'B', 'Planning Poker', 'Planning Poker', 1),
(3, 1, 'C', 'Sprint Backlog', 'Sprint Backlog', 0),
(3, 1, 'D', 'Sprint Retrospective', 'Sprint Retrospective', 0),
(3, 1, 'E', 'Sprint Review', 'Sprint Review', 0),
(3, 1, 'F', 'Daily Scrum', 'Daily Scrum', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 2, 2, 'Todos os eventos Scrum são time boxed.', 'All the Scrum events are time boxed.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 2, 'A', 'Verdadeiro', 'True', 1),
(3, 2, 'B', 'Falso', 'False', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 3, 3, 'Qual dos seguintes eventos Scrum não é uma oportunidade formal para inspecionar e adaptar?', 'Which of the following Scrum events is not a formal opportunity to inspect and adapt?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 3, 'A', 'Sprint Planning', 'Sprint Planning', 0),
(3, 3, 'B', 'Daily Scrum', 'Daily Scrum', 0),
(3, 3, 'C', 'Sprint Retrospective', 'Sprint Retrospective', 0),
(3, 3, 'D', 'Sprint', 'Sprint', 1),
(3, 3, 'E', 'Sprint Review', 'Sprint Review', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 4, 4, 'Qual evento é o coração do Scrum?', 'Which event is the heart of Scrum?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 4, 'A', 'Scrum Planning', 'Scrum Planning', 0),
(3, 4, 'B', 'Daily Scrum', 'Daily Scrum', 0),
(3, 4, 'C', 'Sprint', 'Sprint', 1),
(3, 4, 'D', 'Sprint Retrospective', 'Sprint Retrospective', 0),
(3, 4, 'E', 'Sprint Review', 'Sprint Review', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 5, 5, 'Qual é a duração ideal de uma Sprint?', 'What is the ideal duration of a Sprint?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 5, 'A', 'Depende da complexidade do trabalho.', 'Depends on complexity of work.', 0),
(3, 5, 'B', 'Um mês ou menos.', 'One month or less.', 1),
(3, 5, 'C', '6 semanas.', '6 weeks.', 0),
(3, 5, 'D', '8 semanas.', '8 weeks.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 6, 6, 'O que é criado durante a primeira Sprint de um projeto?', 'What is created during the first Sprint of a project?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 6, 'A', 'Planejamento do projeto.', 'Plan for the project.', 0),
(3, 6, 'B', 'Planejamento e estimativas.', 'Plan and Estimates.', 0),
(3, 6, 'C', 'Incremento do produto.', 'Product Increment.', 1),
(3, 6, 'D', 'Nenhuma das anteriores.', 'All of the above.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 7, 7, 'Durante a metade de uma Sprint de um mês, observa-se que apenas 20% do trabalho proposto está concluído. A duração da Sprint pode ser aumentada?', 'During the middle of a one month Sprint it is observed only 20% of the anticipated work is completed. Can the length of the Sprint be increased?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 7, 'A', 'Sim', 'Yes', 0),
(3, 7, 'B', 'Não', 'No', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 8, 8, 'Quando a próxima Sprint começa?', 'When does the next Sprint begin?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 8, 'A', 'Imediatamente após a conclusão da Sprint anterior.', 'Immediately after the conclusion of the previous Sprint.', 1),
(3, 8, 'B', '2 dias após a conclusão da Sprint anterior.', '2 days after the conclusion of the previous Sprint.', 0),
(3, 8, 'C', '1 semana após a conclusão da Sprint anterior.', 'One week after conclusion of previous Sprint.', 0),
(3, 8, 'D', 'Nenhuma das anteriores.', 'All of the above.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 9, 9, 'Qual das seguintes opções não está incluída em uma Sprint?', 'Which of the following is not included in a Sprint?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 9, 'A', 'Sprint Planning', 'Sprint Planning', 0),
(3, 9, 'B', 'Daily Scrum', 'Daily Scrum', 0),
(3, 9, 'C', 'Trabalho de desenvolvimento', 'Development Work', 0),
(3, 9, 'D', 'Sprint Review', 'Sprint Review', 0),
(3, 9, 'E', 'Sprint Retrospective', 'Sprint Retrospective', 0),
(3, 9, 'F', 'Nenhuma das anteriores', 'None of the above', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 10, 10, 'Durante uma Sprint, escopo não pode ser alterado.', 'During a Sprint, scope cannot be changed.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 10, 'A', 'Verdadeiro', 'True', 0),
(3, 10, 'B', 'Falso', 'False', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 11, 11, 'Dependendo do progresso do trabalho durante uma Sprint, as metas de qualidade podem ser reduzidas para atingir a meta de trabalho.', 'Depending on the progress of work during a Sprint, quality goals can be decreased in order to achieve the work target.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 11, 'A', 'Verdadeiro', 'True', 0),
(3, 11, 'B', 'Falso', 'False', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 12, 12, 'Quem tem autoridade para cancelar a Sprint?', 'Who has the authority to cancel the Sprint?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 12, 'A', 'Scrum Master', 'Scrum Master', 0),
(3, 12, 'B', 'CEO da organização', 'CEO of the Organization', 0),
(3, 12, 'C', 'Stakeholders', 'Stakeholders', 0),
(3, 12, 'D', 'Development Team', 'Development Team', 0),
(3, 12, 'E', 'Product Owner', 'Product Owner', 1),
(3, 12, 'F', 'Nenhuma das anteriores', 'None of the above', 0); 

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 13, 13, 'Em que circunstâncias uma Sprint pode ser cancelada?', 'Under what circumstances a Sprint can be cancelled?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 13, 'A', 'A maioria dos membros do Development Team estiver de férias.', 'Most of the members of Development Team are on vacation.', 0),
(3, 13, 'B', 'Scrum Master não estiver disponível.', 'Scrum Master is not available.', 0),
(3, 13, 'C', 'Aumento dos conflitos entre o Product Owner e o Development Team.', 'Increasing conflicts between Product Owner and Development Team.', 0),
(3, 13, 'D', 'O objetivo da Sprint se tornar obsoleto.', 'Sprint goal becomes obsolete.', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 14, 14, 'O que acontece quando uma Sprint é cancelada?', 'What happens when a Sprint is cancelled?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 14, 'A', 'Os itens completos e feitos do Product Backlog são revistos.', 'Completed and Done Product Backlog items are reviewed.', 0),
(3, 14, 'B', 'Se parte do trabalho for potencialmente liberável, o Product Owner normalmente o aceita.', 'If part of the work is potentially releasable, the Product Owner typically accepts it.', 0),
(3, 14, 'C', 'Os itens incompletos do Product Backlog são reestimados e colocados de volta no Product Backlog.', 'Incomplete Product Backlog items are re-estimated and put back on the Product Backlog.', 0),
(3, 14, 'D', 'Todas as anteriores.', 'All of the above.', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 15, 15, 'Quem cria o Sprint Plan?', 'Who creates the Sprint Plan?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 15, 'A', 'Scrum Master', 'Scrum Master', 0),
(3, 15, 'B', 'Product Owner', 'Product Owner', 0),
(3, 15, 'C', 'Scrum Team', 'Scrum Team', 1),
(3, 15, 'D', 'Gerente de Projetos', 'Project Manager', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 16, 16, 'Qual é a duração ideal do evento Sprint Planning para a Sprint de um mês?', 'What is the optimum duration of Sprint Planning event for Sprint of one month?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 16, 'A', '8 hrs.', '8 hrs.', 1),
(3, 16, 'B', '6 hrs.', '6 hrs.', 0),
(3, 16, 'C', '4 hrs.', '4 hrs.', 0),
(3, 16, 'D', 'Nenhuma das anteriores.', 'All of the above.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 17, 17, 'Sprint Planning pode ser menor ou maior que 8 horas.', 'Sprint Planning can be less than or more than 8 hrs.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 17, 'A', 'Verdadeiro', 'True', 1),
(3, 17, 'B', 'Falso', 'False', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 18, 18, 'O que a reunião do Sprint Planning responde?', 'What does the Sprint Planning meeting answer?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 18, 'A', 'O que pode ser feito (Product Increment) na Sprint.', 'What can be done (Product Increment) in the Sprint.', 0),
(3, 18, 'B', 'Como o trabalho será feito.', 'How the work will be done.', 0),
(3, 18, 'C', 'Quais os riscos previstos na Sprint.', 'What risks foreseen in the Sprint.', 0),
(3, 18, 'D', 'Qual é a capacidade do Development Team.', 'What is the Development Team capacity.', 0),
(3, 18, 'E', 'Todas as anteriores.', 'All of the above.', 0),
(3, 18, 'F', 'A e B.', 'A and B.', 1),
(3, 18, 'G', 'C e D.', 'C and D.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 19, 19, 'Qual das seguintes opções não é uma entrada para a reunião do Sprint Planning?', 'Which of the following is not an input to the Sprint Planning meeting?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 19, 'A', 'Product Backlog.', 'Product Backlog.', 0),
(3, 19, 'B', 'Último Product Increment.', 'Latest Product Increment.', 0),
(3, 19, 'C', 'Sprint Backlog.', 'Sprint Backlog.', 1),
(3, 19, 'D', 'Capacidade projetada do Development Team durante o Sprint.', 'Projected capacity of the Development Team during the Sprint.', 0),
(3, 19, 'E', 'Desempenho passado do Development Team.', 'Past performance of the Development Team.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 20, 20, 'Quem decide que número de itens do Product Backlog deve ser selecionado para a Sprint?', 'Who decides what number of items from the Product Backlog should be selected for the Sprint?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 20, 'A', 'Decisão colaborativa do Scrum Team.', 'Collaborative decision of the Scrum Team.', 0),
(3, 20, 'B', 'Development Team.', 'Development Team.', 1),
(3, 20, 'C', 'Product Owner e Development Team.', 'Product Owner and Development Team.', 0),
(3, 20, 'D', 'Scrum Master e Product Owner.', 'Scrum Master and Product Owner.', 0),
(3, 20, 'E', 'Scrum Master e Development Team.', 'Scrum Master and Development Team.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 21, 21, 'Quais são os resultados da reunião do Planejamento da Sprint?', 'What are the outputs of the Sprint Planning meeting?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 21, 'A', 'Que trabalho (Product Increment) será entregue na Sprint.', 'What work (Product Increment) would be delivered in the Sprint.', 0),
(3, 21, 'B', 'Como o trabalho será feito.', 'How the work would be done.', 0),
(3, 21, 'C', 'Objetivo da Sprint.', 'Sprint Goal.', 0),
(3, 21, 'D', 'Todas as anteriores.', 'All of the above.', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 22, 22, 'O que o Sprint Backlog consiste?', 'What does the Sprint Backlog consists of?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 22, 'A', 'Subconjunto de itens do Product Backlog.', 'Subset of Product Backlog items.', 0),
(3, 22, 'B', 'Itens do Product Backlog selecionados para a Sprint.', 'Product Backlog items selected for the Sprint.', 0),
(3, 22, 'C', 'Planejamento da entrega dos itens selecionados no Product Backlog para a Sprint.', 'Plan for delivering the items selected from the Product Backlog for the Sprint.', 0),
(3, 22, 'D', 'Todas as anteriores.', 'All of the above.', 0),
(3, 22, 'E', 'A e C.', 'A and C.', 0),
(3, 22, 'F', 'B e C.', 'B and C.', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 23, 23, 'Quem monta o Sprint Goal?', 'Who crafts the Sprint Goal?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 23, 'A', 'Scrum Team.', 'Scrum Team.', 1),
(3, 23, 'B', 'Somente o Development Team.', 'Only the Development Team.', 0),
(3, 23, 'C', 'Product Owner e Development Team.', 'Product Owner and Development Team.', 0),
(3, 23, 'D', 'Scrum Master e Product Owner.', 'Scrum Master and Product Owner.', 0),
(3, 23, 'E', 'Somente o Product Owner.', 'Only the Product Owner.', 0),
(3, 23, 'F', 'Somente o Scrum Master.', 'Only the Scrum Master.', 0),
(3, 23, 'G', 'Nenhuma das anteriores.', 'All of the above.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 24, 24, 'Quando o objetivo da Sprint é planejada?', 'When is the Sprint Goal crafted?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 24, 'A', 'Durante Sprint Kickoff.', 'During Sprint Kickoff meeting.', 0),
(3, 24, 'B', 'Durante Daily Scrum.', 'During Daily Scrum.', 0),
(3, 24, 'C', 'Durante Sprint Planning.', 'During Sprint Planning.', 1),
(3, 24, 'D', 'Durante Sprint Review.', 'During Sprint Review.', 0),
(3, 24, 'E', 'Durante Sprint Retrospective.', 'During Sprint Retrospective.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 25, 25, 'Preencha o espaço em branco. <br> ______ é um objetivo que será atingido na Sprint através da implementação do Product Backlog.', 'Fill the blank. <br>______ is an objective that will be met within the Sprint through the implementation of the Product Backlog.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 25, 'A', 'Alvo da Sprint', 'Sprint Target', 0),
(3, 25, 'B', 'Objetivo da Sprint', 'Sprint Goal', 1),
(3, 25, 'C', 'Marco da Sprint', 'Sprint Milestone', 0),
(3, 25, 'D', 'Sprint Backlog', 'Sprint Backlog', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 26, 26, 'Preencha o espaço em branco. <br> O trabalho planejado para os primeiros dias da Sprint pelo Development Team é decomposto no final da reunião de planejamento da Sprint para unidades de ______.', 'Fill the blank. <br>Work planned for the first days of the Sprint by the Development Team is decomposed by the end of Sprint Planning meeting to units of ______');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 26, 'A', 'uma semana ou menos', 'one week or less.', 0),
(3, 26, 'B', 'meio dia ou menos', 'half day or less.', 0),
(3, 26, 'C', 'um dia ou menos', 'one day or less.', 1),
(3, 26, 'D', 'um mês ou menos', 'one month or less.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 27, 27, 'Pessoas além do Scrum Team não podem participar da reunião de Sprint Planning.', 'People apart from Scrum Team cannot participate in the Sprint Planning meeting.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 27, 'A', 'Verdadeiro', 'True', 0),
(3, 27, 'B', 'Falso', 'False', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 28, 28, 'Preencha o espaço em branco. <br> Até o final da Sprint Planning, o Development Team deve ser capaz de ______', 'Fill the blank. <br>By the end of the Sprint Planning, the Development Team should be able to ______');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 28, 'A', 'Criar o documento de design.', 'Create the design document.', 0),
(3, 28, 'B', 'Criar o incremento do produto.', 'Create the product increment.', 1),
(3, 28, 'C', 'Criar o produto inteiro.', 'Create the entire product.', 0),
(3, 28, 'D', 'Nenhuma das anteriores.', 'All of the above.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 29, 29, 'Durante o Sprint, o Development Team observa que o trabalho acaba sendo diferente do que eles esperavam durante a elaboração da meta da Sprint. <br> O que deve ser feito nesse cenário?', 'During the Sprint, the Development Team observes the work turns out to be different than what they expected whilst crafting the Sprint Goal.<br>What shall be done in this scenario?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 29, 'A', 'Reinicie a Sprint a partir do zero.', 'Restart the Sprint from scratch.', 0),
(3, 29, 'B', 'Incluir mais pessoas no Development Team.', 'Put more people in the Development Team.', 0),
(3, 29, 'C', 'Trocar o Scrum Master.', 'Change the Scrum Master.', 0),
(3, 29, 'D', 'Development Team deve colaborar com o Product Owner para negociar o escopo do Sprint Backlog na Sprint.', 'Development Team should collaborate with the Product Owner to negotiate the scope of Sprint Backlog within the Sprint.', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 30, 30, 'Qual é a duração da Daily Scrum?', 'What is the duration of the Daily Scrum?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 30, 'A', '15 a 20 minutos.', '15 to 20 minutes.', 0),
(3, 30, 'B', 'No máximo 15 minutos.', 'Maximum 15 minutes.', 1),
(3, 30, 'C', 'No mínimo 15 minutos.', 'Minimum 15 minutes.', 0),
(3, 30, 'D', 'No máximo 30 minutos.', 'Maximum 30 minutes.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 31, 31, 'Qual é o significado da sentença: "O evento é time boxed".', 'What is the meaning of the statement: "The event is time boxed".');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(3, 31, 'A', 'O evento deve ser concluído dentro do tempo alocado.', 'Event must be completed within the allotted time.', 1),
(3, 31, 'B', 'O evento deve ser continuado até um horário especificado.', 'Event must be continue until a specified time.', 0),
(3, 31, 'C', 'A e B.', 'A and B.', 0),
(3, 31, 'D', 'Nenhuma das anteriores.', 'All of the above.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 32, 32, 'A Daily Scrum é realizada na mesma hora e lugar todos os dias.', 'The Daily Scrum is held is the same time and place every day.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 32, 'A', 'Verdadeiro', 'True', 1),
(3, 32, 'B', 'Falso', 'False', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 33, 33, 'Quem tem permissão para participar do Daily Scrum?', 'Who is allowed to participate in the Daily Scrum?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 33, 'A', 'Scrum Master e Development Team.', 'Scrum Master and Development Team.', 0),
(3, 33, 'B', 'Somente Development Team.', 'Only Development Team.', 1),
(3, 33, 'C', 'Product Owner e Development Team.', 'Product Owner and Development Team.', 0),
(3, 33, 'D', 'Product Owner, Scrum Master e Development Team.', 'Product Owner, Scrum Master and Development Team.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 34, 34, 'O objetivo do Daily Scrum é responder às 3 perguntas a seguir: <br>1. O que eu fiz ontem que ajudou o Development Team a atingir o objetivo da Sprint? <br>2. O que farei hoje para ajudar o Development Team a atingir o objetivo da Sprint? <br>3. Eu vejo algum impedimento que me impeça ou ao Development Team de atingir o objetivo da Sprint?', 'The purpose of Daily Scrum is to answer the following 3 questions: <br>1. Whate did I do yesterday that helped the Development Team meet the Sprint Goal?<br>2. What will I do today to help the Development Team meet the Sprint Goal?<br>3. Do I see any impediment that prevents me or the Development Team from meeting the Sprint Goal?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 34, 'A', 'Verdadeiro', 'True', 0),
(3, 34, 'B', 'Falso', 'False', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 35, 35, 'Quem é responsável pela condução da Daily Scrum?', 'Who is responsible for conducting the Daily Scrum?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 35, 'A', 'Development Team', 'Development Team', 1),
(3, 35, 'B', 'Product Owner', 'Product Owner', 0),
(3, 35, 'C', 'Scrum Master', 'Scrum Master', 0),
(3, 35, 'D', 'Gerente de Projetos', 'Project Manager', 0),
(3, 35, 'E', 'Nenhuma das anteriores', 'None of the above', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 36, 36, 'Qual é o papel do Scrum Master na Daily Scrum?', 'What is the role of Scrum Master in Daily Scrum?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 36, 'A', 'Conduzir o evento.', 'Lead the meeting.', 0),
(3, 36, 'B', 'Garantir que o Development Team faça a reunião.', 'Ensures that the Development Team has the meeting.', 0),
(3, 36, 'C', 'Atribuir tarefas ao Development Team.', 'Assign tasks to Development Team.', 0),
(3, 36, 'D', 'Orientar o Development Team a manter a reunião em 15 minutos.', 'Teach the Development Team to keep the meeting within 15 minutes.', 0),
(3, 36, 'E', 'Todas as anteriores.', 'All of the above.', 0),
(3, 36, 'F', 'A e C.', 'A and C.', 0),
(3, 36, 'G', 'B e D.', 'B and D.', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 37, 37, 'Qual dos seguintes não é um benefício da reunião diária do Scrum?', 'Which of the following is not a benefit of the Daily Scrum meeting?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 37, 'A', 'Melhoria das comunicações.', 'Improves communications.', 0),
(3, 37, 'B', 'Eliminar outras reuniões.', 'Eliminates other meetings.', 0),
(3, 37, 'C', 'Identificação de impedimentos.', 'Impediment identification.', 0),
(3, 37, 'D', 'Promoção da tomada de decisão rápida.', 'Promotes quick decision making.', 0),
(3, 37, 'E', 'Melhora o conhecimento do Development Team.', 'Improves Development Team knowledge.', 0),
(3, 37, 'F', 'Nenhuma das anteriores.', 'All of the above.', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 38, 38, 'Quando ocorre a reunião da Sprint Review?', 'When is the Sprint Review meeting hold?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 38, 'A', 'Todos os dias após o final da Daily Scrum.', 'Every day after the end of Daily Scrum.', 0),
(3, 38, 'B', 'No final da Sprint.', 'At the end of the Sprint.', 1),
(3, 38, 'C', 'No meio da Sprint.', 'At the mid of Sprint.', 0),
(3, 38, 'D', 'Último dia de trabalho de cada semana.', 'Last working day of every week.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 39, 39, 'Ninguém além do Scrum Team participa da reunião de Sprint Review.', 'No one apart from the Scrum Team participates in the Sprint Review meeting.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 39, 'A', 'Verdadeiro', 'True', 0),
(3, 39, 'B', 'Falso', 'False', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 40, 40, 'Sprint Review é uma reunião informal.', 'Sprint Review is an informal meeting.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 40, 'A', 'Verdadeiro', 'True', 1),
(3, 40, 'B', 'Falso', 'False', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 41, 41, 'Qual é a duração máxima da reunião da Sprint Review?', 'What is the maximum optimum duration of the Sprint Review meeting?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 41, 'A', '4 hrs', '4 hrs', 1),
(3, 41, 'B', '8 hrs', '8 hrs', 0),
(3, 41, 'C', '2 hrs', '2 hrs', 0),
(3, 41, 'D', 'Nenhuma das anteriores', 'None of the above', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 42, 42, 'Durante a reunião do Sprint Review, quem explica quais itens do Product Backlog foram feitos e quais não foram feitos?', 'During Sprint Review meeting, who explains what Product Backlog items have been done and what has not been done?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 42, 'A', 'Scrum Master', 'Scrum Master', 0),
(3, 42, 'B', 'Development Team', 'Development Team', 0),
(3, 42, 'C', 'Product Owner', 'Product Owner', 1),
(3, 42, 'D', 'Todas as anteriores', 'All of the above', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 43, 43, 'Qual é o papel do Scrum Master na reunião do Sprint Review?', 'What is the role of Scrum Master in the Sprint Review meeting?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 43, 'A', 'Demonstrar o trabalho que foi "Feito" e responder a perguntas sobre o incremento.', 'Demonstrate the work that it has "Done" and answers questions about the increment.', 0),
(3, 43, 'B', 'Discutir o Product Backlog como está.', 'Discuss the Product Backlog as it stands.', 0),
(3, 43, 'C', 'Explicar quais itens do Product Backlog foram "Feitos" e o que não foi "Feito".', 'Explain what Product Backlog items have been "Done" and what has not been "Done".', 0),
(3, 43, 'D', 'Certificar-se de que a reunião aconteça e orientar todos os envolvidos a manter a reunião dentro do prazo.', 'Ensure that the meeting takes place and teaches everyone involved in the meeting to keep the meeting within the time box.', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 44, 44, 'Durante a Sprint Review, quem demonstra o trabalho que foi feito na Sprint?', 'During Sprint Review, who demonstrates the work that has been done for the Sprint?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 44, 'A', 'Product Owner', 'Product Owner', 0),
(3, 44, 'B', 'Scrum Master', 'Scrum Master', 0),
(3, 44, 'C', 'Development Team', 'Development Team', 1),
(3, 44, 'D', 'Nenhuma das anteriores', 'None of the above', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 45, 45, 'Quem projeta as datas de segmentação e entrega provável com base no progresso?', 'Who projects likely target and delivery dates based on progress?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 45, 'A', 'Product Owner', 'Product Owner', 1),
(3, 45, 'B', 'Scrum Master', 'Scrum Master', 0),
(3, 45, 'C', 'Development Team', 'Development Team', 0),
(3, 45, 'D', 'Nenhuma das anteriores', 'None of the above', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 46, 46, 'O que o Scrum Team e as partes interessadas (stakeholders) fazem para que a Sprint Review forneça informações valiosas para a Sprint Planning subsequente?', 'What do the Scrum Team and stakeholders do so that the Sprint Review provides valuable input to subsequent Sprint Planning?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 46, 'A', 'Documentar o que não correu bem na Sprint.', 'Document what did not go well in the Sprint.', 0),
(3, 46, 'B', 'Colaborar no que fazer em seguida.', 'Collaborate on what to do next.', 1),
(3, 46, 'C', 'Documentar o que foi bem na Sprint.', 'Document what did go well in the Sprint.', 0),
(3, 46, 'D', 'Nenhuma das anteriores.', 'All of the above.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 47, 47, 'Quais itens são revisados ​​na reunião do Sprint Review?', 'What items are reviewed in the Sprint Review meeting?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 47, 'A', 'Linhas do tempo', 'Timelines', 0),
(3, 47, 'B', 'Despesas', 'Budget', 0),
(3, 47, 'C', 'Capacidades potenciais', 'Potential Capabilities', 0),
(3, 47, 'D', 'Marketplace', 'Marketplace', 0),
(3, 47, 'E', 'Todas as anteriores', 'All of the above', 1),
(3, 47, 'F', 'Nenhuma das anteriores', 'None of the above', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 48, 48, 'Qual é o resultado da reunião de Sprint Review?', 'What is the result of the Sprint Review meeting?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 48, 'A', 'Product Backlog revisado.', 'Revised Product Backlog.', 1),
(3, 48, 'B', 'Sprint Backlog revisado.', 'Revised Sprint Backlog.', 0),
(3, 48, 'C', 'A e B.', 'A and B.', 0),
(3, 48, 'D', 'Nenhuma das anteriores.', 'All of the above.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 49, 49, 'Qual evento oferece uma oportunidade para o Scrum Team criar um plano para melhorias a serem promulgadas durante a próxima Sprint?', 'Which event provides an opportunity for the Scrum Team to create a plan for improvements to be enacted during the next Sprint?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 49, 'A', 'Sprint Planning', 'Sprint Planning', 0),
(3, 49, 'B', 'Sprint Review', 'Sprint Review', 0),
(3, 49, 'C', 'Sprint Retrospective', 'Sprint Retrospective', 1),
(3, 49, 'D', 'Nenhuma das anteriores', 'None of the above', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 50, 50, 'Sprint Retrospective ocorre antes da Sprint Review.', 'Sprint Retrospective occurs before Sprint Review.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 50, 'A', 'Verdadeiro', 'True', 0),
(3, 50, 'B', 'Falso', 'False', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 51, 51, 'Qual é a duração máxima máxima da reunião Sprint Retrospective?', 'What is the maximum optimum duration of the Sprint Retrospective meeting?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 51, 'A', '4 horas', '4 hours', 0),
(3, 51, 'B', '1 hora', '1 hour', 0),
(3, 51, 'C', '3 horas', '3 hours', 1), 
(3, 51, 'D', '8 horas', '8 hours', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 52, 52, 'Qual das seguintes opções não é uma finalidade da reunião da Sprint Retrospective?', 'Which of the following is not a purpose of the Sprint Retrospective meeting?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 52, 'A', 'Inspecionar como foi a última Sprint em relação a pessoas, relacionamentos, processos e ferramentas.', 'Inspect how the last Sprint went with regards to people, relationships, process and tools.', 0),
(3, 52, 'B', 'Identificar e ordenar os principais itens que correram bem e possíveis melhorias.', 'Identify and order the major items that went well and potential improvements.', 0),
(3, 52, 'C', 'Criar um plano para implementar melhorias na forma como o Scrum Team faz seu trabalho.', 'Create a plan for implementing improvements to the way the Scrum Team does its work.', 0),
(3, 52, 'D', 'Nenhuma das anteriores.', 'All of the above.', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 53, 53, 'Scrum Master não participa da reunião da Sprint Retrospective.', 'Scrum Master does not participate in the Sprint Retrospective meeting.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 53, 'A', 'Verdadeiro', 'True', 0),
(3, 53, 'B', 'Falso', 'False', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 54, 54, 'Qual é o papel do Scrum Master na reunião de Sprint Retrospective?', 'What is the role of Scrum Master in the Sprint Retrospective meeting?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 54, 'A', 'Garantir que a reunião seja positiva e produtiva.', 'Ensuring the meeting is Positive and Productive.', 0),
(3, 54, 'B', 'Orientar os participantes a manter a reunião dentro do prazo (time box).', 'Teach the participants to keep the meeting within the time box.', 0),
(3, 54, 'C', 'Participar como membro da equipe na reunião a partir da responsabilidade sobre o processo Scrum.', 'Participate as a peer team member in the meeting from the accountability over the Scrum process.', 0),
(3, 54, 'D', 'Todas as anteriores.', 'All of the above.', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 55, 55, 'O que o Scrum Team planeja durante cada reunião de Sprint Retrospective?', 'What does the Scrum Team plan during each Sprint Retrospective meeting?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 55, 'A', 'Formas de aumentar a produtividade.', 'Ways to increase productivity.', 0),
(3, 55, 'B', 'Formas de reduzir custos.', 'Ways to reduce cost.', 0),
(3, 55, 'C', 'Formas de aumentar a qualidade do produto.', 'Ways to increase product quality.', 1),
(3, 55, 'D', 'Formas de aumentar a eficiência.', 'Ways to increase efficiency.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 56, 56, 'No final da Sprint Review, o Scrum Team deve identificar melhorias que serão implementadas na próxima Sprint.', 'By the end of Sprint Review, the Scrum Team should have identified improvements that it will implement in the next Sprint.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 56, 'A', 'Verdadeiro', 'True', 0),
(3, 56, 'B', 'Falso', 'False', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 57, 57, 'Não há problema em ter uma Sprint técnica em que nenhum incremento de produto seja produzido e apenas atualizações técnicas sejam feitas no produto existente.', 'It is ok to have a technical Sprint where no product increment is produced and only technical upgrades are made on the existing product.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 57, 'A', 'Sim', 'Yes', 0),
(3, 57, 'B', 'Não', 'No', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (3, 58, 58, 'Complete a sentença: <br>Sprint Review é ______', 'Complete the following: <br>Sprint Review is ______.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(3, 58, 'A', 'uma reunião em que o Scrum Team e as partes interessadas (stakeholders) inspecionam o resultado de uma Sprint e descobrem o que fazer a seguir.', 'a meeting where Scrum Team and stakeholders inspect the outcome of a Sprint and figure out what to do next.', 1),
(3, 58, 'B', 'um mecanismo para controlar as atividades do Development Team durante uma Sprint.', "a mechanism to control the Development Team's activities during a Sprint.", 0),
(3, 58, 'C', 'uma demonstração no final da Sprint a todos na organização para verificar o trabalho realizado.', 'a demo at the end of the Sprint for everyone in the organization to check on the work done.', 0),
(3, 58, 'D', 'Nenhuma das anteriores.', 'All of the above.', 0);

/*
ASSUNTO 4
*/

INSERT INTO assunto(id, nome_pt, nome_en) VALUES (4, 'Artefatos do Scrum', 'Scrum Artefacts');

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (4, 1, 1, 'Qual dos seguintes itens são artefatos do Scrum?', 'Which of the following are Scrum artifacts?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(4, 1, 'A', 'Product Backlog', 'Product Backlog', 0),
(4, 1, 'B', 'Sprint Backlog', 'Sprint Backlog', 0),
(4, 1, 'C', 'Incremento', 'Increment', 0),
(4, 1, 'D', 'Todas as anteriores.', 'All of the above.', 1),
(4, 1, 'E', 'Nenhuma das anteriores.', 'All of the above.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (4, 2, 2, 'Preencha os espaços em branco. <br> O Product Backlog é uma ______ ______ de tudo o que é conhecido como sendo necessário no produto.', 'Fill the blanks.<br>The Product Backlog is ______ ______ of everything that is known to be needed in the product.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(4, 2, 'A', 'Lista Desordenada', 'Unordered list', 0),
(4, 2, 'B', 'Lista Ordenada', 'Ordered list', 1),
(4, 2, 'C', 'Lista sistemática', 'Systematic list', 0),
(4, 2, 'D', 'Nenhuma das anteriores', 'None of the above', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (4, 3, 3, 'Qual é a fonte única de requisitos para quaisquer alterações a serem feitas no produto?', 'What is the single source of requirements for any changes to be made to the product?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(4, 3, 'A', 'Documento de regras do produto.', 'Product requirement document.', 0),
(4, 3, 'B', 'Sprint Backlog.', 'Sprint Backlog.', 0),
(4, 3, 'C', 'Product Backlog.', 'Product Backlog.', 1),
(4, 3, 'D', 'Sprint Backlog e Product Backlog.', 'Both Sprint and Product Backlog.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (4, 4, 4, 'Quem é responsável pelo Product Backlog, incluindo seu conteúdo, disponibilidade e pedido?', 'Who is responsible for the Product Backlog, including its content, availability and ordering?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(4, 4, 'A', 'Scrum Team', 'Scrum Team', 0),
(4, 4, 'B', 'Development Team', 'Development Team', 0),
(4, 4, 'C', 'Scrum Master', 'Scrum Master', 0),
(4, 4, 'D', 'Product Owner', 'Product Owner', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (4, 5, 5, 'O Product Backlog nunca está completo.', 'The Product Backlog is never complete.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(4, 5, 'A', 'Verdadeiro', 'True', 1),
(4, 5, 'B', 'Falso', 'False', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (4, 6, 6, 'Os itens do Product Backlog não incluem descrições de teste que comprovarão sua integridade quando forem concluídas.', 'Product Backlog items do not include test descriptions that will prove its completeness when done.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(4, 6, 'A', 'Verdadeiro', 'True', 0),
(4, 6, 'B', 'Falso', 'False', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (4, 7, 7, 'Qual(is) fator(es) pode(m) causar mudanças no Product Backlog?', 'What factor(s) may cause changes in the Product Backlog?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(4, 7, 'A', 'Regras de negócio', 'Business requirements', 0),
(4, 7, 'B', 'Condições de mercado', 'Market conditions', 0),
(4, 7, 'C', 'Tecnologia', 'Technology', 0),
(4, 7, 'D', 'Todas as anteriores', 'All of the above', 1),
(4, 7, 'E', 'Nenhuma das anteriores', 'None of the above', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (4, 8, 8, 'Se vários Scrum Teams estiverem trabalhando no mesmo produto, eles poderão usar seus próprios Product Backlog.', "If multiple Scrum Teams are working on the same product, they can use their own Product Backlog's.");

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(4, 8, 'A', 'Verdadeiro', 'True', 0),
(4, 8, 'B', 'Falso', 'False', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (4, 9, 9, 'Preencha o espaço em branco. <br> O ato de adicionar detalhes, estimativas e pedidos a itens no Product Backlog é chamado ______.', 'Fill the blank.<br>The act of adding detail, estimates and order to items in the Product Backlog is called ______.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(4, 9, 'A', 'Product Backlog review.', 'Product Backlog review.', 0),
(4, 9, 'B', 'Product Backlog revision.', 'Product Backlog revision.', 0),
(4, 9, 'C', 'Product Backlog refinement.', 'Product Backlog refinement.', 1),
(4, 9, 'D', 'Nenhuma das anteriores.', 'All of the above.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (4, 10, 10, 'Quanto tempo o Development Team deve dedicar para a atividade de refinamento do Product Backlog?', 'How much time should the Development Team devote for the Product Backlog refinement activity?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(4, 10, 'A', '1 hora por semana.', '1 hour per week.', 0),
(4, 10, 'B', 'Não mais que 10% da capacidade do Development Team.', "Not more than 10% of Development Team's capacity.", 1),
(4, 10, 'C', 'Não mais que 5% da capacidade do Development Team.', "Not more than 5% of Development Team's capacity.", 0),
(4, 10, 'D', 'Nenhuma das anteriores.', 'All of the above.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (4, 11, 11, 'Como os itens do Product Backlog são ordenados no Product Backlog?', 'How the Product Backlog items are ordered in Product Backlog?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(4, 11, 'A', 'Complexidade (itens complexos são colocados no topo).', 'Complexity (complex items are placed at the top).', 0),
(4, 11, 'B', 'Qualquer ordem aleatória.', 'Any random order.', 0),
(4, 11, 'C', 'Custo (itens mais caros são colocados no topo).', 'Cost (items which are most expensive are placed at the top).', 0),
(4, 11, 'D', 'Clareza (itens claros e mais detalhados são colocados no topo).', 'Clarity (items which are clear and more detailed are placed at the top).', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (4, 12, 12, 'Preencha o espaço em branco. Os itens do Product Backlog que podem ser concluídos pelo Development Team em um Sprint são considerados ______ para seleção em um Sprint Planning.', 'Fill the blank.<br>Product Backlog items that can be Done by the Development Team within one Sprint are deemed ______ for selection in a Sprint Planning.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(4, 12, 'A', 'Prontos', 'Ready', 1),
(4, 12, 'B', 'Completos', 'Complete', 0), 
(4, 12, 'C', 'Positivos', 'Positive', 0),
(4, 12, 'D', 'Nenhuma das anteriores', 'None of the above', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (4, 13, 13, 'O Development Team é responsável por todas as estimativas. O Product Owner não pode influenciar o Development Team em suas estimativas.', 'The Development Team is responsible for all estimates. The Product Owner may not influence the Development Team in their estimates.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(4, 13, 'A', 'Verdadeiro', 'True', 0),
(4, 13, 'B', 'Falso', 'False', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (4, 14, 14, 'O que é a Sprint Backlog?', 'What is a Sprint Backlog?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(4, 14, 'A', 'O Sprint Backlog é o conjunto de itens do Product Backlog selecionado para o Sprint.', 'Sprint Backlog is the set of Product Backlog items selected for the Sprint.', 0),
(4, 14, 'B', 'Um plano para entregar o incremento do produto.', 'A plan for delivering the product increment.', 0),
(4, 14, 'C', 'A e B', 'A and B', 1),
(4, 14, 'D', 'Nenhuma das anteriores.', 'All of the above.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (4, 15, 15, 'Preencha o espaço em branco. <br> ______ é uma previsão do Development Team sobre qual funcionalidade estará no próximo incremento e no trabalho necessário para entregar essa funcionalidade em um incremento feito.', 'Fill the blank.<br>______ is a forecast by the Development Team about what functionality will be in the next increment and the work needed to deliver that functionality into a do Done Increment.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(4, 15, 'A', 'Product Backlog', 'Product Backlog', 0),
(4, 15, 'B', 'Incremento do produto', 'Product Increment', 0),
(4, 15, 'C', 'Sprint Backlog', 'Sprint Backlog', 1),
(4, 15, 'D', 'Nenhuma das anteriores', 'None of the above', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (4, 16, 16, 'Preencha o espaço em branco. <br> Para garantir a melhoria contínua, o Sprint Backlog inclui ______.', 'Fill the blank.<br>To ensure continuous improvement the Sprint Backlog includes ______.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(4, 16, 'A', 'Uma melhoria de processo de alta prioridade identificada na reunião retrospectiva anterior.', 'One high priority process improvement identified in the previous Retrospective meeting.', 0),
(4, 16, 'B', 'Pelo menos uma melhoria de processo de alta prioridade identificada na reunião retrospectiva anterior.', 'At least one high priority process improvement identified in the previous Retrospective meeting.', 1),
(4, 16, 'C', 'No máximo uma melhoria de processo de alta prioridade identificada na reunião retrospectiva anterior.', 'At most one high priority process improvement identified in the previous Retrospective meeting.', 0), 
(4, 16, 'D', 'Nenhuma das anteriores.', 'All of the above.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (4, 17, 17, 'O Sprint Backlog está mais estático para o Sprint.', 'The Sprint Backlog remains static for the Sprint.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(4, 17, 'A', 'Verdadeiro', 'True', 0),
(4, 17, 'B', 'Falso', 'False', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (4, 18, 18, 'Quem tem autoridade para alterar o Sprint Backlog?', 'Who has the authority to change the Sprint Backlog?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(4, 18, 'A', 'Somente Product Owner.', 'Only Product Owner.', 0),
(4, 18, 'B', 'Somente Scrum Master.', 'Only Scrum Master.', 0),
(4, 18, 'C', 'Qualquer um do Scrum Team.', 'Anyone from the Scrum Team.', 0),
(4, 18, 'D', 'Somente Development Team.', 'Only Development Team.', 1),
(4, 18, 'E', 'Todas as anteriores.', 'All of the above.', 0),
(4, 18, 'F', 'Nenhuma das anteriores.', 'All of the above.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (4, 19, 19, 'O que é um Incremento?', 'What is an Increment?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(4, 19, 'A', 'Todos os itens do Product Backlog completados durante uma Sprint.', 'All the Product Backlog items completed during a Sprint.', 0),
(4, 19, 'B', 'Itens do Product Backlog concluíram as Sprints anteriores.', 'Product Backlog items completed previous Sprints.', 0),
(4, 19, 'C', 'Itens do Product Backlog concluídos durante a Sprint e o valor dos incrementos de todas as Sprints anteriores.', 'Product Backlog items completed during the Sprint and the value of the increments of all previous Sprints.', 1),
(4, 19, 'D', 'Nenhuma das anteriores.', 'All of the above.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (4, 20, 20, 'Preencha o espaço em branco. <br> Todo o final de uma Sprint, o novo Incremento deve ser ______.', 'Fill the blank.<br>All the end of a Sprint, the new Increment must be ______.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(4, 20, 'A', 'Feito (Done)', 'Done', 1),
(4, 20, 'B', 'Completo (Complete)', 'Complete', 0),
(4, 20, 'C', 'Pronto (Ready)', 'Ready', 0),
(4, 20, 'D', 'Nenhuma das anteriores', 'None of the above', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (4, 21, 21, 'No final de cada Sprint, o incremento feito é lançado no mercado.', 'At the end of every Sprint the Done Increment is released to the market.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(4, 21, 'A', 'Verdadeiro', 'True', 0),
(4, 21, 'B', 'Falso', 'False', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (4, 22, 22, 'O produto pode estar em condições não tão utilizáveis ​​se o Product Owner decidir não liberá-lo no final da Sprint.', 'The product can be in not so usable condition if Product Owner has decided no to release it at the end of Sprint.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(4, 22, 'A', 'Verdadeiro', 'True', 0),
(4, 22, 'B', 'Falso', 'False', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (4, 23, 23, 'O Product Owner pode reordenar o Product Backlog já criado.', 'The Product Owner can reorder the already created Product Backlog.');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES
(4, 23, 'A', 'Verdadeiro', 'True', 1),
(4, 23, 'B', 'Falso', 'False', 0);

/*
ASSUNTO 5
*/

INSERT INTO assunto(id, nome_pt, nome_en) VALUES (5, 'Transparência dos Artefatos', 'Artifact Transparency');

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (5, 1, 1, 'Quem deve garantir a transparência dos artefatos?', 'Who must ensure transparency of artifacts?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(5, 1, 'A', 'Product Owner', 'Product Owner', 0),
(5, 1, 'B', 'Development Team', 'Development Team', 0),
(5, 1, 'C', 'Scrum Team', 'Scrum Team', 0),
(5, 1, 'D', 'Scrum Master', 'Scrum Master', 1);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (5, 2, 2, 'O que acontece com a "Definição de Feito" enquanto o Time Scrum amadurece?', 'What happens to the "Definition of Done" as the Scrum Team matures?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(5, 2, 'A', 'As Definições de Done serão expandidas para incluir critérios mais rigorosos.', 'Definitions of Done will expand to include more stringent criteria.', 0),
(5, 2, 'B', 'Definição de Feito permanece como está.', 'Definition of Done remains as is.', 0),
(5, 2, 'C', 'Novas definições, conforme usadas, podem revelar o trabalho a ser feito em Incrementos Feitos anteriormente.', 'New definitions, as used, may uncover work to be done in previously Done Increments.', 0),
(5, 2, 'D', 'A e C', 'A and C.', 1),
(5, 2, 'E', 'Nenhuma das anteriores.', 'All of the above.', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (5, 3, 3, 'O que é usado para avaliar quando as tarefas são concluídas no Incremento do Produto?', 'What is used to assess when work is complete on the Product Increment?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(5, 3, 'A', 'Definição de Pronto (Ready)', 'Definition of Ready', 0),
(5, 3, 'B', 'Definição de Feito (Done)', 'Definition of Done', 1),
(5, 3, 'C', 'Qualidade do produto', 'Product Quality', 0),
(5, 3, 'D', 'Nenhuma das anteriores', 'None of the above', 0);

INSERT INTO questao(id_assunto, id, ordem, texto_pt, texto_en)
VALUES (5, 4, 4, 'Quando muitas Development Team estão trabalhando em um único produto, o que melhor descreve a "Definição de Feito"?', 'When many Development Teams are working on a single product, what best describes the "Definition of Done"?');

INSERT INTO questao_resposta(id_assunto, id_questao, letraOpcao, texto_pt, texto_en, respostaCerta) VALUES 
(5, 4, 'A', 'Todas as Development Team devem ter uma definição de feito que torne seu trabalho combinado potencialmente liberável.', 'All Development Teams must have a definition of done that makes their combined work potentially releasable.', 1),
(5, 4, 'B', 'Cada Development Team usa a sua própria, mas deve deixar sua definição clara para todas as outras equipes, para que as diferenças sejam conhecidas.', 'Each Development Team uses its own but must make their definition clear to all other teams so the difference are known.', 0),
(5, 4, 'C', 'Cada Development Team define e usa o seu próprio. As diferenças são discutidas e reconciliadas durante uma Hardening Sprint.', 'Each Development Team defines and uses its own. The differences are discussed and reconciled during a Hardening Sprint.', 0),
(5, 4, 'D', 'Nenhuma das anteriores.', 'All of the above.', 0);

/*
GLOSSARIO
*/

DROP TABLE IF EXISTS glossario;
DROP TABLE IF EXISTS glossario_letra;
DROP TABLE IF EXISTS glossario_letra_item;

CREATE TABLE IF NOT EXISTS glossario
    (id INTEGER PRIMARY KEY, idioma CHAR(5));
	
CREATE TABLE IF NOT EXISTS glossario_letra
    (id INTEGER PRIMARY KEY, letra CHAR(1));

CREATE TABLE IF NOT EXISTS glossario_letra_item
    (id_glossario INTEGER, id_letra INTEGER, id INTEGER, termo TEXT, descricao TEXT, PRIMARY KEY (id_glossario, id_letra, id));
	
INSERT INTO glossario(id, idioma) VALUES (1, 'EN');
INSERT INTO glossario(id, idioma) VALUES (2, 'PT');


INSERT INTO glossario_letra(id, letra) VALUES (1, 'A');

INSERT INTO glossario_letra_item(id_glossario, id_letra, id, termo, descricao) VALUES
(2, 1, 1, 'Auto-organização', 'o princípio de gestão que as equipes organizam autonomamente seu trabalho. A auto-organização acontece dentro dos limites e contra os objetivos dados. As equipes escolhem a melhor forma de realizar seu trabalho, em vez de serem dirigidas por outras pessoas fora da equipe.');


INSERT INTO glossario_letra(id, letra) VALUES (2, 'B');

INSERT INTO glossario_letra_item(id_glossario, id_letra, id, termo, descricao) VALUES
(1, 2, 1, 'Burn-down Chart', 'a chart which shows the amount of work which is thought to remain in a backlog. Time is shown on the horizontal axis and work remaining on the vertical axis. As time progresses and items are drawn from the backlog and completed, a plot line showing work remaining may be expected to fall. The amount of work may be assessed in any of several ways such as user story points or task hours. Work remaining in Sprint Backlogs and Product Backlogs may be communicated by means of a burn-down chart. See also: Burnup Chart'),
(1, 2, 2, 'Burn-up Chart', 'a chart which shows the amount of work which has been completed. Time is shown on the horizontal axis and work completed on the vertical axis. As time progresses and items are drawn from the backlog and completed, a plot line showing the work done may be expected to rise. The amount of work may be assessed in any of several ways such as user story points or task hours. The amount of work considered to be in-scope may also be plotted as a line; the burn-up can be expected to approach this line as work is completed.');

INSERT INTO glossario_letra_item(id_glossario, id_letra, id, termo, descricao) VALUES
(2, 2, 1, 'Burn-down Chart', 'um gráfico que mostra em um backlog a quantidade de trabalho pendente de ser finalizado. O tempo é mostrado no eixo horizontal e o trabalho que falta ser feito no eixo vertical. Conforme o tempo progride e os itens do backlog são completados, a linha que mostra o trabalho remanescente tende a cair. A quantidade de trabalho pode ser avaliada de várias formas, como por exemplo, através de histórias de usuários ou horas por tarefa. O trabalho remanescente de um Sprint Backlog ou de um Product Backlog podem ser comunicados através de um burn-down chart. Também veja: Burn-up Chart.'),
(2, 2, 2, 'Burn-up Chart', 'um gráfico que mostra a quantidade de trabalho que já foi realizada. O tempo é mostrado no eixo horizontal e o trabalho já realizado no eixo vertical. Conforme o tempo progride e os itens do backlog são completados, a linha que mostra o trabalho realizado tende a subir. A quantidade de trabalho pode ser avaliada de várias formas como por exemplo, através de histórias de usuários ou horas por tarefa. O total de trabalho considerado como no escopo da entrega também deve ser plotado como uma linha e espera-se que o burn-up vá se aproximando dessa linha conforme o trabalho vá sendo concluído.');


INSERT INTO glossario_letra(id, letra) VALUES (3, 'C');

INSERT INTO glossario_letra_item(id_glossario, id_letra, id, termo, descricao) VALUES
(1, 3, 1, 'Coherent/Coherence', 'the quality of the relationship between certain Product Backlog items which may make them worthy of consideration as a whole. See also: Sprint Goal.');

INSERT INTO glossario_letra_item(id_glossario, id_letra, id, termo, descricao) VALUES
(2, 3, 1, 'Coerente/Coerência (Coherent/Coherence)', 'a qualidade do relacionamento entre certos itens do Product Backlog que podem torná-los dignos de consideração como um todo. Veja também: Sprint Goal');


INSERT INTO glossario_letra(id, letra) VALUES (4, 'D');

INSERT INTO glossario_letra_item(id_glossario, id_letra, id, termo, descricao) VALUES
(1, 4, 1, 'Daily Scrum', 'daily time-boxed event of 15 minutes, or less, for the Development Team to re-plan the next day of development work during a Sprint. Updates are reflected in the Sprint Backlog.'),
(1, 4, 2, 'Definition of Done', 'a shared understanding of expectations that the Increment must live up to in order to be releasable into production. Managed by the Development Team.'),
(1, 4, 3, 'Development Team', 'the role within a Scrum Team accountable for managing, organizing and doing all development work required to create a releasable Increment of product every Sprint.');

INSERT INTO glossario_letra_item(id_glossario, id_letra, id, termo, descricao) VALUES
(2, 4, 1, 'Dívida técnica', 'a sobrecarga tipicamente imprevisível de manter o produto, geralmente causada por decisões de projeto menos que ideais, contribuindo para o custo total de propriedade. Pode existir involuntariamente no Incremento ou introduzido intencionalmente para valorizar mais cedo.'),
(2, 4, 2, 'Daily Scrum', 'evento diário e com tempo determinado (time-boxed) de 15 minutos ou menos, para o Development Team replanejar o próximo dia de trabalho de desenvolvimento da Sprint. As atualizações são refletidas no Sprint Backlog.'),
(2, 4, 3, 'Definição de Feito (Definition of Done)', 'um entendimento compartilhado das expectativas que o incremento deve possuir para ser implantável no ambiente produtivo. É gerenciada pelo Development Team.'),
(2, 4, 4, 'Development Team', 'o papel dentro de um Scrum Team que é responsável por gerenciar, organizar e fazer TODO o trabalho de desenvolvimento requerido para criar um incremento de um produto em cada Sprint.');


INSERT INTO glossario_letra(id, letra) VALUES (5, 'E');

INSERT INTO glossario_letra_item(id_glossario, id_letra, id, termo, descricao) VALUES
(1, 5, 1, 'Emergence', 'the process of the coming into existence or prominence of new facts or new knowledge of a fact, or knowledge of a fact becoming visible unexpectedly.'),
(1, 5, 2, 'Empiricism', 'process control type in which only the past is accepted as certain and in which decisions are based on observation, experience and experimentation. Empiricism has three pillars: transparency, inspection and adaptation.'),
(1, 5, 3, 'Engineering standards', 'a shared set of development and technology standards that a Development Team applies to create releasable Increments of software.');

INSERT INTO glossario_letra_item(id_glossario, id_letra, id, termo, descricao) VALUES
(2, 5, 1, 'Emergência', 'o processo de surgimento de novos fatos ou novos conhecimentos sobre um fato, ou conhecimento de um fato surgir de maneira inesperada.'),
(2, 5, 2, 'Empirismo', 'tipo de controle de processo que somente o passado é aceito como certeza e em que todas as decisões são baseadas em observações, experiências passadas e experimentação. Empirismo possui três pilares: Transparência, Inspeção e Adaptação.');


INSERT INTO glossario_letra(id, letra) VALUES (6, 'F');

INSERT INTO glossario_letra_item(id_glossario, id_letra, id, termo, descricao) VALUES
(1, 6, 1, 'Forecast (of functionality)', 'the selection of items from the Product Backlog a Development Team deems feasible for implementation in a Sprint.');

INSERT INTO glossario_letra_item(id_glossario, id_letra, id, termo, descricao) VALUES
(2, 6, 1, 'Forecast (of functionality) [Previsão (de funcionalidade)]', 'a seleção de itens do Product Backlog que um Time de Desenvolvimento considera viável para implementação em uma Sprint.');


INSERT INTO glossario_letra(id, letra) VALUES (7, 'G');


INSERT INTO glossario_letra(id, letra) VALUES (8, 'H');


INSERT INTO glossario_letra(id, letra) VALUES (9, 'I');

INSERT INTO glossario_letra_item(id_glossario, id_letra, id, termo, descricao) VALUES
(1, 9, 1, 'Increment', 'a piece of working software that adds to previously created Increments, where the sum of all Increments -as a whole - form a product.');

INSERT INTO glossario_letra_item(id_glossario, id_letra, id, termo, descricao) VALUES
(2, 9, 1, 'Incremento', 'uma parte funcional de software que adiciona incrementos criados anteriormente, onde a soma de todos os Incrementos - como um todo - formam um produto.');


INSERT INTO glossario_letra(id, letra) VALUES (10, 'J');


INSERT INTO glossario_letra(id, letra) VALUES (11, 'K');


INSERT INTO glossario_letra(id, letra) VALUES (12, 'L');


INSERT INTO glossario_letra(id, letra) VALUES (13, 'M');


INSERT INTO glossario_letra(id, letra) VALUES (14, 'N');


INSERT INTO glossario_letra(id, letra) VALUES (15, 'O');


INSERT INTO glossario_letra(id, letra) VALUES (16, 'P');

INSERT INTO glossario_letra_item(id_glossario, id_letra, id, termo, descricao) VALUES
(1, 16, 1, 'Product Backlog', 'an ordered list of the work to be done in order to create, maintain and sustain a product. Managed by the Product Owner.'),
(1, 16, 2, 'Product Backlog Refinement', 'the activity in a Sprint through which the Product Owner and the Development Teams add granularity to the Product Backlog.'),
(1, 16, 3, 'Product Owner', 'the role in Scrum accountable for maximizing the value of a product, primarily by incrementally managing and expressing business and functional expectations for a product to the Development Team(s).');

INSERT INTO glossario_letra_item(id_glossario, id_letra, id, termo, descricao) VALUES
(2, 16, 1, 'Pronto', 'um entendimento compartilhado pelo Product Owner e pelo Development Team em relação ao nível preferido de descrição dos itens do Product Backlog apresentados na Sprint Planning.'),
(2, 16, 2, 'Product Backlog', 'uma lista ordenada do trabalho a ser feito para criar, manter e sustentar um produto. Gerenciado pelo Product Owner.'),
(2, 16, 3, 'Product Backlog Refinement (Refinamento do Product Backlog)', 'a atividade em uma Sprint através da qual o Product Owner e o Development Team adicionam granularidade ao Product Backlog.'),
(2, 16, 4, 'Product Owner', 'é o papel no Scrum responsável por maximizar o valor de um produto, principalmente gerenciando e expressando de forma incremental as expectativas de negócios e funcionais de um produto para o(s) Development Team(s).'),
(2, 16, 5, 'Padrões de engenharia', 'um conjunto compartilhado de padrões de desenvolvimento e tecnologia que um Development Team aplica para criar Incrementos de software que podem ser "entregáveis".');


INSERT INTO glossario_letra(id, letra) VALUES (17, 'Q');


INSERT INTO glossario_letra(id, letra) VALUES (18, 'R');

INSERT INTO glossario_letra_item(id_glossario, id_letra, id, termo, descricao) VALUES
(1, 18, 1, 'Ready', 'a shared understanding by the Product Owner and the Development Team regarding the preferred level of description of Product Backlog items introduced at Sprint Planning.'),
(1, 18, 2, 'Refinement', 'see Product Backlog Refinement');

INSERT INTO glossario_letra_item(id_glossario, id_letra, id, termo, descricao) VALUES
(2, 18, 1, 'Refinamento', 'consulte o Refinamento do Product Backlog.');


INSERT INTO glossario_letra(id, letra) VALUES (19, 'S');

INSERT INTO glossario_letra_item(id_glossario, id_letra, id, termo, descricao) VALUES
(1, 19, 1, 'Scrum', 'a framework to support teams in complex product development. Scrum consists of Scrum Teams and their associated roles, events, artifacts, and rules, as defined in the Scrum GuideTM.'),
(1, 19, 2, 'Scrum Board', 'a physical board to visualize information for and by the Scrum Team, often used to manage Sprint Backlog. Scrum boards are an optional implementation within Scrum to make information visible.'),
(1, 19, 3, 'Scrum Guide™', 'the definition of Scrum, written and provided by Ken Schwaber and Jeff Sutherland, co-creators of Scrum. This definition consists of Scrum’s roles, events, artifacts, and the rules that bind them together.'),
(1, 19, 4, 'Scrum Master', 'the role within a Scrum Team accountable for guiding, coaching, teaching and assisting a Scrum Team and its environments in a proper understanding and use of Scrum.'),
(1, 19, 5, 'Scrum Team', 'a self-organizing team consisting of a Product Owner, Development Team and Scrum Master.'),
(1, 19, 6, 'Scrum Values', 'a set of fundamental values and qualities underpinning the Scrum framework; commitment, focus, openness, respect and courage.'),
(1, 19, 7, 'Self-organization', 'the management principle that teams autonomously organize their work. Self-organization happens within boundaries and against given goals. Teams choose how best to accomplish their work, rather than being directed by others outside the team.'),
(1, 19, 8, 'Sprint', 'time-boxed event of 30 days, or less, that serves as a container for the other Scrum events and activities. Sprints are done consecutively, without intermediate gaps.'),
(1, 19, 9, 'Sprint Backlog', 'an overview of the development work to realize a Sprint’s goal, typically a forecast of functionality and the work needed to deliver that functionality. Managed by the Development Team.'),
(1, 19, 10, 'Sprint Goal', 'a short expression of the purpose of a Sprint, often a business problem that is addressed. Functionality might be adjusted during the Sprint in order to achieve the Sprint Goal.'),
(1, 19, 11, 'Sprint Planning', 'time-boxed event of 8 hours, or less, to start a Sprint. It serves for the Scrum Team to inspect the work from the Product Backlog that’s most valuable to be done next and design that work into Sprint backlog.'),
(1, 19, 12, 'Sprint Retrospective', 'time-boxed event of 3 hours, or less, to end a Sprint. It serves for the Scrum Team to inspect the past Sprint and plan for improvements to be enacted during the next Sprint.'),
(1, 19, 13, 'Sprint Review', 'time-boxed event of 4 hours, or less, to conclude the development work of a Sprint. It serves for the Scrum Team and the stakeholders to inspect the Increment of product resulting from the Sprint, assess the impact of the work performed on overall progress and update the Product backlog in order to maximize the value of the next period.'),
(1, 19, 14, 'Stakeholder', 'a person external to the Scrum Team with a specific interest in and knowledge of a product that is required for incremental discovery. Represented by the Product Owner and actively engaged with the Scrum Team at Sprint Review.');

INSERT INTO glossario_letra_item(id_glossario, id_letra, id, termo, descricao) VALUES
(2, 19, 1, 'Scrum', 'framework para apoiar equipes no desenvolvimento de produtos complexos. O Scrum consiste em Times Scrum e suas respectivas funções, eventos, artefatos e regras, conforme definido no Scrum Guide.'),
(2, 19, 2, 'Scrum Board (Quadro de Scrum)', 'quadro físico para visualizar informações para e pelo Time Scrum, geralmente usado para gerenciar o Sprint Backlog. Scrum Boards são uma implementação opcional dentro do Scrum para tornar as informações visíveis.'),
(2, 19, 3, 'Scrum Guide', 'definição de Scrum, escrita e fornecida por Ken Schwaber e Jeff Sutherland, co-criadores do Scrum. Essa definição consiste em papéis, eventos, artefatos e regras do Scrum que os unem.'),
(2, 19, 4, 'Scrum Master', 'é o papel dentro de um Time Scrum responsável por orientar, treinar, ensinar e auxiliar um Time Scrum e seus ambientes em uma compreensão e uso adequados do Scrum.'),
(2, 19, 5, 'Sprint', 'evento com time-box de 30 dias ou menos, que serve como um contêiner para os outros eventos e atividades do Scrum. Sprints são feitas consecutivamente, sem lacunas intermediárias.'),
(2, 19, 6, 'Sprint Backlog', 'uma visão geral do trabalho de desenvolvimento para realizar uma meta da Sprint, normalmente uma previsão de funcionalidade e o trabalho necessário para fornecer essa funcionalidade. Gerenciado pelo Development Team.'),
(2, 19, 7, 'Sprint Goal', 'breve expressão do propósito de um Sprint, muitas vezes um problema de negócio que é abordado. A funcionalidade pode ser ajustada durante o Sprint para atingir o objetivo da Sprint.'),
(2, 19, 8, 'Sprint Planning (Planejamento de Sprint)', 'evento com time-box de 8 horas ou menos para iniciar um Sprint. Ele serve para que o Time Scrum inspecione o trabalho do Product Backlog que é mais valioso para ser feito em seguida e projete esse trabalho no backlog da Sprint.'),
(2, 19, 9, 'Sprint Retrospective (Retrospectiva da Sprint)', 'evento com time-box de tempo de 3 horas, ou menos, para encerrar uma Sprint. Ele serve para o Time Scrum para inspecionar a Sprint passada e planejar melhorias a serem implementadas durante o próximo Sprint.'),
(2, 19, 10, 'Sprint Review', 'evento com time-box de 4 horas, ou menos, para concluir o trabalho de desenvolvimento de um Sprint. Ele serve para que o Time Scrum e as partes interessadas inspecionem o Incremento do produto resultante da Sprint, avaliem o impacto do trabalho realizado no progresso geral e atualizem o backlog do Produto para maximizar o valor do próximo período.'),
(2, 19, 11, 'Stakeholder', 'pessoa externa ao Time Scrum com um interesse específico e conhecimento de um produto que é necessário para a descoberta incremental. Representado pelo Product Owner e engajado ativamente com o Time Scrum na Sprint Review.');


INSERT INTO glossario_letra(id, letra) VALUES (20, 'T');

INSERT INTO glossario_letra_item(id_glossario, id_letra, id, termo, descricao) VALUES
(1, 20, 1, 'Technical Debt', 'the typically unpredictable overhead of maintaining the product, often caused by less than ideal design decisions, contributing to the total cost of ownership. May exist unintentionally in the Increment or introduced purposefully to realize value earlier.');

INSERT INTO glossario_letra_item(id_glossario, id_letra, id, termo, descricao) VALUES
(2, 20, 1, 'Time Scrum', 'equipe auto-gerenciável composta por um Product Owner, um Development Team e um Scrum Master.');


INSERT INTO glossario_letra(id, letra) VALUES (21, 'U');


INSERT INTO glossario_letra(id, letra) VALUES (22, 'V');

INSERT INTO glossario_letra_item(id_glossario, id_letra, id, termo, descricao) VALUES
(1, 22, 1, 'Values', 'when the values of commitment, courage, focus, openness and respect are embodied and lived by the Scrum Team, the *Scrum pillars* of transparency, inspection, and adaptation *come to life* and *build trust* for everyone. The Scrum Team members learn and explore those values as they work with the Scrum events, roles and artifacts.'),
(1, 22, 2, 'Velocity', 'an optional, but often used, indication of the average amount of Product Backlog turned into an Increment of product during a Sprint by a Scrum Team, tracked by the Development Team for use within the Scrum Team.');

INSERT INTO glossario_letra_item(id_glossario, id_letra, id, termo, descricao) VALUES
(2, 22, 1, 'Valores', 'Quando os valores de compromisso, coragem, foco, abertura e respeito são incorporados e vividos pelo Time Scrum, os * pilares Scrum * da transparência, inspeção e adaptação * ganham vida * e * constroem confiança * para todos. Os membros do Time Scrum aprendem e exploram esses valores enquanto trabalham com os eventos, funções e artefatos do Scrum.'),
(2, 22, 2, 'Velocity', 'indicação opcional, mas frequentemente usada, da quantidade média de Backlog do Produto transformada em um Incremento do produto durante um Sprint por um Time Scrum, rastreado pelo Development Team para uso dentro do Time Scrum.'),
(2, 22, 3, 'Valores Scrum', 'conjunto de valores e qualidades fundamentais que sustentam o framework Scrum: compromisso, foco, abertura, respeito e coragem (commitment, focus, openness, respect e courage).');


INSERT INTO glossario_letra(id, letra) VALUES (23, 'W');


INSERT INTO glossario_letra(id, letra) VALUES (24, 'X');


INSERT INTO glossario_letra(id, letra) VALUES (25, 'Y');


INSERT INTO glossario_letra(id, letra) VALUES (26, 'Z');

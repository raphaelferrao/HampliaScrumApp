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
(2, 2, 1, 'Burn-down Chart', 'um gráfico que mostra em um backlog a quantidade de trabalho pendente de ser finalizado. O tempo é mostrado no eixo horizontal e o trabalho que falta ser feito no eixo vertical. Conforme o tempo progride e os itens do backlog são completados, a linha que mostra o trabalho remanscente tende a cair. A quantidade de trabalho pode ser avaliada de várias formas, como por exemplo, através de histórias de usuários ou horas por tarefa. O trabalho remascente de um Sprint Backlog ou de um Product Backlog podem ser comunicados através de um burn-down chart. Também veja: Burn-up Chart.'),
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
(2, 4, 2, 'Daily Scrum', 'evento diário e com tempo determinado (time-boxed) de 15 minutos ou menos, para o time de desenvolvimento replanegar o próximo dia de trabalho de desenvolvimento da Sprint. As atualizações são refletidas no Sprint Backlog.'),
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
(2, 16, 1, 'Pronto', 'um entendimento compartilhado pelo Product Owner e pela Development Team em relação ao nível preferido de descrição dos itens do Product Backlog apresentados na Sprint Planning.'),
(2, 16, 2, 'Product Backlog', 'uma lista ordenada do trabalho a ser feito para criar, manter e sustentar um produto. Gerenciado pelo Product Owner.'),
(2, 16, 3, 'Product Backlog Refinement (Refinamento do Product Backlog)', 'a atividade em uma Sprint através da qual o Product Owner e o Development Team adicionam granularidade ao Product Backlog.'),
(2, 16, 4, 'Product Owner', 'é o papel no Scrum responsável por maximizar o valor de um produto, principalmente gerenciando e expressando de forma incremental as expectativas de negócios e funcionais de um produto para o(s) Development Team(s).'),
(2, 16, 5, 'Padrões de engenharia', 'um conjunto compartilhado de padrões de desenvolvimento e tecnologia que uma Development Team aplica para criar Incrementos de software que podem ser "entregáveis".');


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


## **Banco de Dados**
-   **Banco de Dados (BD)**: Coleção estruturada de dados armazenados e gerenciados de forma eletrônica.
-   **Sistema de Gerenciamento de Banco de Dados (SGBD)**: Software que facilita a criação, manipulação e administração de bancos de dados (ex.: MySQL, PostgreSQL).
-   **Modelo de Dados**: Estrutura que define a organização dos dados (ex.: relacional, NoSQL).
-   **Tabela**: Estrutura básica em bancos de dados relacionais que armazena dados em linhas e colunas.
-   **Campo (ou Coluna)**: Atributo ou categoria de dados em uma tabela.
-   **Registro (ou Linha)**: Conjunto de dados relacionados em uma tabela.
-   **Chave Primária**: Identificador único para cada registro em uma tabela.
-   **Chave Estrangeira**: Campo que estabelece uma relação entre duas tabelas.
-   **Índice**: Estrutura que melhora a velocidade de consultas e operações em uma tabela.
-   **Consulta (Query)**: Instrução usada para recuperar ou manipular dados (ex.: SQL SELECT).
-   **Normalização**: Processo de organizar dados para reduzir redundância e melhorar a integridade.
-   **Transação**: Conjunto de operações que devem ser executadas como uma unidade atômica (ACID: Atomicidade, Consistência, Isolamento, Durabilidade).
-   **Backup**: Cópia de segurança dos dados para recuperação em caso de falhas.
-   **Views**: Tabelas virtuais criadas por consultas que apresentam dados específicos.
-   **Procedures e Triggers**: Código armazenado que automatiza tarefas e responde a eventos no banco de dados.

## **Programação Orientada a Objetos**
-   **Classe**: Modelo ou blueprint para criar objetos; define atributos e métodos.
-   **Objeto**: Instância de uma classe; possui estado (valores dos atributos) e comportamento (métodos).
-   **Encapsulamento**: Princípio de ocultar detalhes internos e expor apenas o que é necessário; melhora a modularidade e proteção dos dados.
-   **Herança**: Mecanismo que permite a criação de novas classes baseadas em classes existentes; promove reutilização de código e hierarquia.
-   **Polimorfismo**: Capacidade de diferentes classes responderem a mesma interface ou método de maneiras específicas; permite um código mais flexível e extensível.
-   **Abstração**: Conceito de ocultar complexidade e mostrar apenas as funcionalidades essenciais; simplifica o design e a interação com objetos.
-   **Método**: Função definida dentro de uma classe que opera sobre os dados dos objetos.
-   **Atributo**: Variável definida dentro de uma classe que mantém o estado dos objetos.
-   **Construtor**: Método especial usado para inicializar novos objetos quando criados; configura o estado inicial.
-   **Destruidor**: Método especial usado para limpar recursos quando um objeto é destruído; libera memória e outros recursos.
-   **Classe Abstrata**: Classe que não pode ser instanciada diretamente e serve como base para outras classes; pode ter métodos abstratos que devem ser implementados pelas subclasses.
-   **Interface**: Contrato que define um conjunto de métodos que uma classe deve implementar; promove a flexibilidade e interoperabilidade entre classes.

# **Metodologias Ágeis**
### **Kanban**

-   **Kanban**: Método visual de gerenciamento de trabalho que se baseia em um quadro para monitorar o fluxo de trabalho.
-   **Quadro Kanban**: Visualização das etapas do processo de trabalho, dividido em colunas (ex.: "A Fazer", "Em Progresso", "Concluído").
-   **Cartões**: Representam tarefas ou itens de trabalho e são movidos entre as colunas conforme avançam no fluxo.
-   **Limite de Trabalho em Progresso (WIP)**: Restrições no número de tarefas permitidas em cada coluna para evitar sobrecarga e garantir um fluxo de trabalho eficiente.
-   **Fluxo Contínuo**: Enfatiza a entrega contínua e o gerenciamento do trabalho conforme ele avança, ao invés de ciclos fixos de desenvolvimento.
-   **Melhoria Contínua**: Análise regular do processo para identificar e implementar melhorias incrementais.

### **Scrum**

-   **Scrum**: Framework ágil para gerenciar e completar projetos complexos, usando ciclos de trabalho iterativos chamados sprints.
-   **Sprint**: Ciclo de trabalho com duração fixa (geralmente 2 a 4 semanas) durante o qual um conjunto de tarefas é concluído.
-   **Product Backlog**: Lista priorizada de requisitos e funcionalidades desejadas para o produto; gerenciada pelo Product Owner.
-   **Sprint Backlog**: Lista de itens do Product Backlog selecionados para o sprint atual, juntamente com o plano para entregá-los.
-   **Daily Scrum (Stand-up Meeting)**: Reunião diária curta para sincronizar atividades, revisar o progresso e identificar obstáculos.
-   **Sprint Review**: Reunião no final do sprint para revisar o trabalho concluído e obter feedback dos stakeholders.
-   **Sprint Retrospective**: Reunião para refletir sobre o sprint anterior, identificar o que funcionou bem, o que não funcionou e planejar melhorias.
-   **Product Owner**: Responsável por definir e priorizar os requisitos no Product Backlog e maximizar o valor do produto.
-   **Scrum Master**: Facilitador do processo Scrum, ajuda a equipe a seguir as práticas e resolve impedimentos.
-   **Equipe Scrum**: Grupo auto-organizado responsável pela execução das tarefas durante o sprint e pela entrega do incremento de produto.


# **Salesforce**
### **Tipos de Flow**

1.  **Screen Flow**
    
    -   **Descrição**: Permite a criação de interfaces interativas para os usuários inserirem dados e interagirem com o sistema.
    -   **Uso**: Ideal para processos que requerem interação do usuário, como formulários ou assistentes guiados.
2.  **Auto-launched Flow**
    
    -   **Descrição**: Executa automaticamente em segundo plano sem necessidade de interação do usuário.
    -   **Uso**: Ideal para automações que são acionadas por eventos ou ações programadas, como atualizações de registros ou processos em lote.
3.  **Record-Triggered Flow**
    
    -   **Descrição**: Inicia automaticamente em resposta a alterações em registros, como criação, atualização ou exclusão de um registro.
    -   **Uso**: Ideal para automações baseadas em mudanças nos registros, substituindo regras de Workflow e Process Builder para cenários mais complexos.
4.  **Scheduled Flow**
    
    -   **Descrição**: Executa em horários específicos ou de acordo com uma programação definida.
    -   **Uso**: Ideal para processos de rotina que precisam ser executados em horários regulares ou em intervalos específicos, como relatórios de limpeza de dados.
5.  **Platform Event-Triggered Flow**
    
    -   **Descrição**: Inicia em resposta à publicação de eventos da plataforma, que são mensagens assíncronas enviadas para comunicar mudanças de estado ou eventos.
    -   **Uso**: Ideal para automações que devem reagir a eventos do sistema ou de aplicativos externos, permitindo integrações e respostas a eventos em tempo real.
6.  **Scheduled-Triggered Flow**
    
    -   **Descrição**: Semelhante ao Scheduled Flow, mas pode ser acionado em horários definidos em relação a uma programação ou agenda específica, com uma lógica de execução mais flexível.
    -   **Uso**: Ideal para processos que necessitam ser executados em horários específicos, mas com mais controle sobre a frequência e as condições de execução.

### **Elementos Adicionais de Flows**

-   **Subflows**: Flows que são chamados e executados dentro de outro Flow. Permitem a modularização e reutilização de processos comuns em diferentes Flows.

### **Benefícios dos Tipos de Flow**

-   **Flexibilidade e Automação**: Permite criar processos altamente flexíveis e automatizados que podem atender a diferentes necessidades de negócios.
-   **Melhoria na Eficiência Operacional**: Reduz a necessidade de intervenção manual e permite processos mais rápidos e precisos.
-   **Personalização**: Oferece várias opções para criar soluções personalizadas para diferentes cenários e requisitos de negócios.
### **Campos Fórmulas**

-   **Definição**: Campos que utilizam expressões para calcular valores baseados em outros campos do registro ou em valores globais, e exibem esses valores em tempo real.
    
-   **Tipos de Campos Fórmulas**:
    
    -   **Text**: Retorna um valor de texto.
    -   **Number**: Retorna um valor numérico.
    -   **Currency**: Retorna um valor de moeda.
    -   **Date**: Retorna um valor de data.
    -   **Date/Time**: Retorna um valor de data e hora.
    -   **Percent**: Retorna um valor percentual.
    -   **Checkbox**: Retorna um valor booleano (Verdadeiro ou Falso).
    -   **Formula**: Pode ser uma fórmula avançada que pode incluir lógica condicional, manipulação de texto, cálculos matemáticos, etc.
-   **Componentes de Fórmulas**:
    
    -   **Referências a Campos**: Utilizam valores de outros campos no mesmo registro (por exemplo, `{!Account.AnnualRevenue}`).
    -   **Funções**: Funções pré-definidas para cálculos e manipulações, como `IF()`, `BLANKVALUE()`, `TEXT()`, `CONCATENATE()`, `ROUND()`, entre outras.
    -   **Operadores**: Operadores matemáticos (`+`, `-`, `*`, `/`), operadores lógicos (`AND`, `OR`, `NOT`), e operadores de comparação (`=`, `<`, `>`, `<=`, `>=`).
    -   **Constantes**: Valores fixos definidos na fórmula, como números ou texto.
-   **Uso Comum**:
    
    -   **Cálculos Matemáticos**: Realiza cálculos com valores numéricos ou financeiros.
    -   **Formatação de Texto**: Manipula e formata strings de texto, como concatenar nomes e sobrenomes.
    -   **Lógica Condicional**: Implementa lógica condicional para exibir valores com base em condições específicas (`IF()`, `CASE()`).
    -   **Data e Hora**: Calcula diferenças entre datas ou ajusta datas e horas (`NOW()`, `TODAY()`).
-   **Exemplos de Fórmulas**:
    
    -   **Calcular Idade**: `YEAR(TODAY()) - YEAR(Birthdate)` (considera apenas o ano).
    -   **Formatar Nome Completo**: `FirstName & " " & LastName`.
    -   **Avaliar Desconto**: `IF(Amount > 1000, Amount * 0.1, 0)` (aplica desconto de 10% se o valor for maior que 1000).
-   **Considerações**:
    
    -   **Avaliação em Tempo Real**: Os valores dos campos fórmulas são calculados em tempo real quando o registro é visualizado ou editado.
    -   **Desempenho**: Campos fórmulas complexas podem impactar o desempenho, especialmente se forem usados em grande quantidade em relatórios ou visualizações.
    -   **Segurança**: Campos fórmulas respeitam as regras de compartilhamento e segurança de dados do Salesforce, exibindo informações de acordo com as permissões do usuário.
-   **Limitações**:
    
    -   **Sem Ação Direta**: Campos fórmulas são apenas para exibição de valores calculados e não podem ser editados diretamente pelos usuários.
    -   **Limitações de Tamanho**: Fórmulas complexas podem atingir limites de tamanho e complexidade impostos pela plataforma Salesforce.

### **Benefícios dos Campos Fórmulas**

-   **Automação e Precisão**: Calcula valores automaticamente com base em dados atuais, reduzindo a necessidade de cálculos manuais e erros.
-   **Eficiência**: Facilita a criação de relatórios e análises dinâmicas, uma vez que os valores são calculados em tempo real.
-   **Personalização**: Permite criar campos personalizados que atendem às necessidades específicas do negócio sem necessidade de desenvolvimento adicional.

### **Apex**

-   **Definição**: Linguagem de programação orientada a objetos desenvolvida pela Salesforce para escrever lógica personalizada e interações complexas com dados no Salesforce.
    
-   **Ambiente de Execução**:
    
    -   **Salesforce Cloud**: O código Apex é executado na nuvem Salesforce, garantindo escalabilidade e segurança.
    -   **Execução Assíncrona e Sincrona**: Apex pode ser executado de forma sincrona (imediata) ou assíncrona (em segundo plano), dependendo das necessidades do processamento.
-   **Componentes Principais**:
    
    -   **Classes**: Estruturas que definem objetos e métodos. Exemplo: `public class MyClass { ... }`.
    -   **Triggers**: Código que é executado automaticamente em resposta a eventos em registros (como inserções, atualizações e exclusões). Exemplo: `trigger AccountTrigger on Account (before insert, after update) { ... }`.
    -   **Visualforce Controllers**: Classes Apex usadas para fornecer lógica de controle para páginas Visualforce, permitindo interatividade personalizada.
    -   **Lightning Web Components (LWC) Controllers**: Classes Apex usadas como controladores para componentes Lightning Web, proporcionando lógica de back-end.
-   **Operações Assíncronas**:
    
    -   **Batch Apex**: Permite o processamento de grandes volumes de dados em partes menores, processando dados em lotes. Exemplo: `public class MyBatchClass implements Database.Batchable<SObject> { ... }`.
    -   **Queueable Apex**: Permite a execução assíncrona de operações que podem ser enfileiradas e processadas posteriormente. Exemplo: `public class MyQueueableClass implements Queueable { ... }`.
    -   **Future Methods**: Métodos marcados com `@future` que são executados em um contexto assíncrono, ideal para chamadas de API ou operações que não precisam de resposta imediata. Exemplo: `@future public static void myFutureMethod() { ... }`.
    -   **Scheduled Apex**: Permite que o código Apex seja executado em horários programados ou intervalos regulares. Exemplo: `public class MyScheduledClass implements Schedulable { ... }`.
-   **Testes e Cobertura**:
    
    -   **Test Classes**: Classes Apex usadas para criar e executar testes unitários para garantir que o código funcione corretamente e atender aos requisitos de cobertura de código. Exemplo: `@isTest public class MyTestClass { ... }`.
    -   **Test Methods**: Métodos dentro das test classes usados para verificar a funcionalidade do código. Exemplo: `@isTest static void testMyMethod() { ... }`.
-   **Transações e Limitações**:
    
    -   **Governance Limits**: Limites de execução para garantir que um único processo não consuma recursos excessivos, como limites de DML, chamadas de métodos, e tempo de CPU.
    -   **Transactional Control**: Apex suporta controle de transações com pontos de salvamento e execução dentro de uma transação.
-   **Integração com Outras Tecnologias**:
    
    -   **Web Services**: Apex pode consumir e expor web services REST e SOAP, permitindo integração com sistemas externos.
    -   **Callouts**: Permite que o código Apex faça chamadas HTTP para serviços externos. Exemplo: `HttpRequest req = new HttpRequest(); ...`.
-   **Segurança e Governança**:
    
    -   **Enforcement of Security**: Apex respeita as regras de segurança e compartilhamento de dados do Salesforce, garantindo que o código execute apenas dentro das permissões e acessos definidos.
    -   **Sharing Rules**: Apex pode modificar dados e executar operações considerando regras de compartilhamento e permissões.

### **Benefícios do Apex**

-   **Personalização**: Permite a criação de lógica e funcionalidades personalizadas que atendem às necessidades específicas dos negócios.
-   **Automação**: Facilita a automação de processos complexos e integrações com outros sistemas.
-   **Flexibilidade**: Oferece uma maneira poderosa de estender a funcionalidade padrão do Salesforce, adaptando a plataforma para requisitos específicos.


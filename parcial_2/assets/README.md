# Projeto `Construção de dataset para histórico de in-game currencies`

# Equipe devian - DVN
* `Igor Gabriel Cavalcante de Carvalho Borges` - `236773`

## Resumo do Projeto
O objetivo do projeto é construir um _dataset_ contendo os valores históricos de diversas in-game currencies, ou moedas virtuais de jogos, com o propósito de oferecer os recursos para pesquisas relacionadas ao seu comportamento e comparação com o de moedas tradicionais e criptomoedas. Atualmente se baseia no seguinte modelo conceitual:  

![modelo conceitual](./assets/images/entity_relationship_model.png "Modelo Conceitual")

Como modelos lógicos, foram escolhidos:  
 * Relacional: Para representação das tabelas de preços
 * Documentos: Para armazenamento das informações sobre os jogos que contém as moedas

As fontes de dados incluem:  
 * Metadados:
   * [Steam](https://store.steampowered.com)
   * [IGDB](https://www.igdb.com)
 * Preços:
   * [Steam Community Market](https://steamcommunity.com/market)
   * [Player Auctions](https://www.playerauctions.com/)
   * [Binance](https://www.binance.com)
   * [Backpack.tf](https://backpack.tf/)
   * [Backpack.dt](https://dota2.backpack.tf/)

Serão extraídas delas as informações por meio de APIs e, se necessário, Web Scraping.

Os dados, agregados de diferentes fontes, exigem uma grande quantidade de transformações para aderirem a um padrão para o banco de dados. Por isso, foram criados diversos scripts para automatizar a tarefa. Nem todos estão completos, e alguns necessitam de API Keys que não serão fornecidas.

As principais questões a serem abordadas pelo banco de dados são:
 * Como o comportamento dessas moedas virtuais se compara com o de moedas tradicionais?
 * Similarmente, como seu comportamento se compara com o de criptomoedas?
 * É possível prever seu comportamento com uso de algoritmos? (mais adequada para pesquisas de machine learning)

Com as ferramentas (não necessariamente os dados) presentes atualmente, podem ser respondidas questões imediatas como:
 * Qual o histórico da taxa de câmbio entre duas moedas?
 * Como é o comportamento médio de uma moeda X ao longo dos anos?
 * Como a diferença entre moedas evolui ao longo dos anos?
 * etc.

## Slides da Apresentação
[Apresentação](./slides/slides.pdf)

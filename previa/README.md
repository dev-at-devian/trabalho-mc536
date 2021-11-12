# Projeto `Construção de dataset para histórico de in-game currencies`

# Equipe devian - DVN
* `Igor Gabriel Cavalcante de Carvalho Borges` - `236773`

## Resumo do Projeto
O objetivo do projeto é construir um _dataset_ contendo os valores históricos de diversas in-game currencies, ou moedas virtuais de jogos, com o propósito de oferecer os recursos para pesquisas relacionadas ao seu comportamento e comparação com o de moedas tradicionais e criptomoedas.

## Slides da Apresentação
[Apresentação](./slides/slides.pdf)

## Modelo Conceitual Preliminar

![Modelo ER](./assets/images/entity_relationship_model.png)

## Modelos Lógicos Preliminares

O modelo relacional é utilizado para todas as tabelas de preço, com a mesma assinatura:

~~~
COIN(_Date_, _Price_)
~~~

Já para os metadados dos jogos que contém as moedas, é utilizado o modelo de documentos, com o seguinte template:

~~~
{
    name: String,
    description: String
    steam: {
        steam_game: bool,
        appid: int
    },
    developers: [String],
    publishers: [String],
    platforms: [String],
    genres: [String],
    keywords: [String],
    release_date: String,
    currencies: [
      {
            id: String,
            name: String,
            price: {
                fixed_price: int,
                unit: int,
                price_table: String
            }
        }

    ]
}
~~~
## Dataset Preliminar a ser Publicado
> Elencar os arquivos/bases preliminares dos datasets serão publicados publicados.

título do arquivo/base | link | breve descrição
----- | ----- | -----
`<título do arquivo/base>` | `<link para arquivo/base>` | `<breve descrição do arquivo/base>`

> Os arquivos finais do dataset publicado devem ser colocados na pasta `data`, em subpasta `processed`. Outros arquivos serão colocados em subpastas conforme seu papel (externo, interim, raw). A diferença entre externo e raw é que o raw é em formato não adaptado para uso. A pasta `raw` é opcional, pois pode ser substituída pelo link para a base original da seção anterior.
> Coloque arquivos que não estejam disponíveis online e sejam acessados pelo notebook. Relacionais (usualmente CSV), XML, JSON e CSV ou triplas para grafos.

## Bases de Dados
> Elencar as bases de dados fonte utilizadas no projeto.

título da base | link | breve descrição
----- | ----- | -----
`<título da base>` | `<link para a página da base>` | `<breve descrição da base>`

## Operações realizadas para a construção do dataset

> Coloque um link para o arquivo do notebook, programas ou workflows que executam as operações de construção do dataset:
* extração de dados de fontes não estruturadas como, por exemplo, páginas Web
* agregação de dados fragmentados obtidos a partir de API
* integração de dados de múltiplas fontes
* tratamento de dados
* transformação de dados para facilitar análise e pesquisa

> Se for notebook, ele estará dentro da pasta `notebook`. Se por alguma razão o código não for executável no Jupyter, coloque na pasta `src`. Se as operações envolverem queries executadas atraves de uma interface de um SGBD não executável no Jupyter, como o Cypher, apresente na forma de markdown.

## Perguntas de Pesquisa/Análise Combinadas e Respectivas Análises

> Liste aqui as perguntas de pesquisa/análise e respectivas análises.
> Nem todas as perguntas precisam de queries que as implementam.
> É possível haver perguntas em que a solução é apenas descrita para
> demonstrar o potencial da base.
>
### Pergunta/Análise 1
> * Pergunta 1
>   
>   * Explicação sucinta da análise que será feita ou conjunto de queries que
>     responde à pergunta.

### Pergunta/Análise 2
> * Pergunta 2
>   
>   * Explicação sucinta da análise que será feita ou conjunto de queries que
>     responde à pergunta.

### Pergunta/Análise 3
> * Pergunta 3
>   
>   * Explicação sucinta da análise que será feita ou conjunto de queries que
>     responde à pergunta.

> Coloque um link para o arquivo do notebook que executa o conjunto de queries. Ele estará dentro da pasta `notebook`. Se por alguma razão o código não for executável no Jupyter, coloque na pasta `src`. Se as queries forem executadas atraves de uma interface de um SGBD não executável no Jupyter, como o Cypher, apresente na forma de markdown.

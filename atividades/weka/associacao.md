# Algoritmos de Associação

## Introdução

Algoritmos de associação são técnicas de mineração de dados usadas para descobrir relações interessantes entre variáveis em grandes conjuntos de dados. Eles são amplamente utilizados em áreas como marketing, vendas, e-commerce, e análise de comportamento do consumidor para identificar padrões e tendências.
Exemplos de algoritmos de associação incluem o Apriori, FP-Growth, e Eclat.

### Suporte

Indica a frequência com que um item ou conjunto de itens aparece no conjunto de dados. É calculado como a proporção de transações que contêm o item ou conjunto de itens em relação ao total de transações.

Ex.: Suporte({Café, Pão}) = Número de transações que contêm Café e Pão / Total de transações

### Confiança

Indica a probabilidade de que um item ou conjunto de itens esteja presente em uma transação, dado que outro item ou conjunto de itens está presente. É calculado como a proporção de transações que contêm ambos os itens ou conjuntos de itens em relação ao número de transações que contêm o item ou conjunto de itens antecedente.

Ex.: Confiança({Café} -> {Pão}) = Número de transações que contêm Café e Pão / Número de transações que contêm Café

---

## Atividade

Extrair regras com suporte mínimo = 30% e confiança mínima = 70% do seguinte conjunto de dados:

| T   | Leite | Café | Cerveja | Pão | Manteiga | Arroz | Feijão |
| --- | ----- | ---- | ------- | --- | -------- | ----- | ------ |
| 1   | N     | S    | N       | S   | S        | N     | N      |
| 2   | S     | N    | S       | S   | S        | N     | N      |
| 3   | N     | S    | N       | S   | S        | N     | N      |
| 4   | S     | S    | N       | S   | S        | N     | N      |
| 5   | N     | N    | S       | N   | N        | N     | N      |
| 6   | N     | N    | N       | N   | S        | N     | N      |
| 7   | N     | N    | N       | S   | N        | N     | N      |
| 8   | N     | N    | N       | N   | N        | N     | S      |
| 9   | N     | N    | N       | N   | N        | S     | S      |
| 10  | N     | N    | N       | N   | N        | S     | N      |

### 1. Identificação de Itemsets Frequentes (Suporte ≥ 30%)

* **1-itemsets:**
  * {Leite}: 2/10 (20%) -> não frequente
  * {Café}: 3/10 (30%) -> frequente
  * {Cerveja}: 2/10 (20%) -> não frequente
  * {Pão}: 5/10 (50%) -> frequente
  * {Manteiga}: 5/10 (50%)  -> frequente
  * {Arroz}: 2/10 (20%) -> não frequente
  * {Feijão}: 2/10 (20%) -> não frequente

* **2-itemsets:**
  * {Café, Pão}: 3/10 (30%) -> frequente
  * {Café, Manteiga}: 3/10 (30%) -> frequente
  * {Pão, Manteiga}: 4/10 (40%) -> frequente

* **3-itemsets:**
  * {Café, Pão, Manteiga}: 3/10 (30%) -> frequente

---

### 2. Geração de Regras de Associação (Confiança ≥ 70%)

Calculamos a confiança para todas as permutações dos itemsets frequentes encontrados acima.

#### Regras de 2 Itens

* **Café -> Pão:** 3/3 = 100%
* **Café -> Manteiga:** 3/3 = 100%
* **Pão -> Café:** 3/5 = 60%
* **Manteiga -> Café:** 3/5 = 60%
* **Pão -> Manteiga:** 4/5 = 80%
* **Manteiga -> Pão:** 4/5 = 80%

#### Regras de 3 Itens (Itemset {Café, Pão, Manteiga})

* **{Café, Pão} -> Manteiga:** 3/3 = 100%
* **{Café, Manteiga} -> Pão:** 3/3 = 100%
* **{Pão, Manteiga} -> Café:** 3/4 = 75%
* **Café -> {Pão, Manteiga}:** 3/3 = 100%
* **Pão -> {Café, Manteiga}:** 3/5 = 60%
* **Manteiga -> {Café, Pão}:** 3/5 = 60%

---

## Resumo das Regras Extraídas

As regras que atendem a ambos os requisitos (S ≥ 30% e C ≥ 70%) são:

1. Café -> Pão (Conf: 100%)
2. Café -> Manteiga (Conf: 100%)
3. Pão -> Manteiga (Conf: 80%)
4. Manteiga -> Pão (Conf: 80%)
5. {Café, Pão} -> Manteiga (Conf: 100%)
6. {Café, Manteiga} -> Pão (Conf: 100%)
7. {Pão, Manteiga} -> Café (Conf: 75%)
8. Café -> {Pão, Manteiga} (Conf: 100%)

## Outras medidas de interesse

Lift, suporte real, valor adicionado, ganho, dependência, convicção.

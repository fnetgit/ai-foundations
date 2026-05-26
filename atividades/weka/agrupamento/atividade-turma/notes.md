# Anotações sobre a atividade

## Preparação do dataset

Primeiro comecei renomeando os títulos das tabelas do [old-dataset-tsc.csv](old-dataset-tsc.csv), também excluí a coluna 'Cabelo 1'(Cabelo 2 virou tipo_cabelo), pois todos os dados eram iguais('curto').

Padronizei os dados, coloquei as primeiras letras em maiúsculas, tirei acentos (incluindo os 'não') e os espaços finais. coloquei as alturas com separador de ponto e não vírgula. [new-dataset-tsc.csv](new-dataset-tsc.csv)

Transformei alguns campos com números em string, como idade e altura. Deixei um espaço antes dos simbolos de >

Fiz o arquivo arff [new-dataset-tsc.arff](new-dataset-tsc.arff) removendo os nomes dos alunos, corrigi nomes com espaços, barras e parênteses (no arrf, se o nome tiver espaços, deve ser colocado entre aspas). Nas chaves, coloquei todos os valores possiveis de algumas colunas, mesmo os que não estavam presentes no dataset, como por exemplo, o atributo 'estado_civil', que tinha apenas 'solteiro' e 'casado', mas adicionei 'viuvo' e 'separado judicialmente'.

---

## Algoritmos de agrupamento

Rodei o dataset nos Algoritmos de agrupamento:

### SimpleKMeans

Divide os dados em K grupos e atribui cada dado ao grupo mais próximo.

Depois você pode calcular a moda/classe mais frequente de cada grupo, mas isso não é o objetivo principal do KMeans.

### HierarchicalClusterer

Cria uma hierarquia de agrupamentos, geralmente em forma de árvore/dendrograma.

Ele também pode mostrar grupos, mas não necessariamente calcula moda automaticamente.

### EM (Expectation-Maximization)

Calcula probabilidades de pertencimento.

Ou seja, um dado pode ter 70% de chance de pertencer ao grupo A e 30% ao grupo B.

---

## SimpleKMeans Results

### SimpleKMeans com 2 clusters

Ao rodar o SimpleKMeans, convergiu em 6 iterações. dividi em dois clusters:

- **Cluster 0:** 18 instâncias(altura 1,61-1,70, pardos, não usam óculos, preferem filmes de animação, usam Brave, estão em um relacionamento, e dirigem).
- **Cluster 1:** 12 instâncias(altura 1,71-1,80, brancos, usam óculos, preferem filmes de fantasia, usam Chrome, estão solteiros, e não dirigem).

### SimpleKMeans com 3 clusters

Fiz também um SimpleKMeans com três clusters. convergiu em 4 iterações.

- **Cluster 0:** 17 pessoas. Usam TypeScript, fullstack, Windows, Chrome, VSCode, pardos, não usam óculos, preferem filmes de Ação, Rock e Jogar.
- **Cluster 1:** 7 pessoas. Usam Linux, Brave, Python, brancos, usam óculos, desenhar, filmes de fantasia.
- **Cluster 2:** 6 pessoas. Backend, Python, não moram com os pais, estão em um relacionamento, preferem romance e MPB, cor negra e cabelos cacheados/ondulados.

---

## HierarchicalClusterer Results

Fiz o HierarchicalClusterer com 3 clusters. Como são dados categórticos, alterei distanceFunction de Euclidean para Manhattan, pra contar o número exato de respostas diferentes entre dois alunos. linkTipe para WARD porque ele analisa todas as possíveis uniões e junta apenas aqueles que causam o menor aumento na variancia total, isso faz com que se formem grupos de tamanhos mais balanceados.

- **Cluster 0:** 19 pessoas(63%).
- **Cluster 1:** 10 pessoas(33%).
- **Cluster 2:** 1 pessoas(3%).

---

## EM (Expectation-Maximization) Results

Fiz EM(Expectation-Maximization) com -1(o algoritmo decide o número de clusters) e com 3 clusters.

### EM com -1

Com -1 o algoritmo selecionou apenas um cluster, contendo todas as 30 instâncias da base, ou seja, 100% dos dados. Isso indica que, nessa configuração, o EM não identificou diferenças probabilísticas suficientemente relevantes para separar os participantes em grupos distintos. Assim, o resultado representa um perfil geral da amostra, e não uma divisão entre diferentes perfis.

Foram observadas as características predominantes da amostra, como idade entre 18 e 20 anos, sexo masculino, preferência por Python, uso de Windows e Android, IDE VSCode, interesse por Full-Stack e cidade predominante Parnaíba.

### EM com 3 clusters

- **Cluster 0:** 14 pessoas(47%). apresenta como perfil predominante alunos que utilizam Windows, preferem Python, usam Chrome, desejam atuar como Full-Stack, moram com os pais e não dirigem.
- **Cluster 1:** 9 pessoas(33%).se destaca pelo uso de Linux, preferência por Python, maior presença de pessoas em relacionamento afetivo, que não moram com os pais e dirigem.
- **Cluster 2:** 7 pessoas(20%). apresenta maior associação com TypeScript, navegador Brave, gosto por animação, uso de Windows e pessoas que dirigem.

---

### Matriz de similaridade

A matriz de similaridade é uma representação tabular que mostra o grau de semelhança entre os dados, onde cada célula representa a similaridade entre dois dados.

Fiz uma matriz de similaridade em [Python](matriz-de-similaridade.py) a partir do arquivo [new-dataset-tsc.csv](new-dataset-tsc.csv). Para calcular a similaridade, comparei as respostas de cada par de alunos e contei quantas colunas tinham valores iguais. Depois, dividi esse total pela quantidade de atributos comparados e converti o resultado em porcentagem.

O resultado foi salvo em [similarity_matrix.csv](similarity_matrix.csv). Nessa matriz, o valor 100 aparece na diagonal principal, pois cada aluno é totalmente semelhante a si mesmo. Já os outros valores mostram o percentual de semelhança entre diferentes alunos.

Essa matriz ajudou a identificar quais alunos têm perfis mais parecidos entre si e serviu como apoio para interpretar melhor os agrupamentos encontrados pelos algoritmos.

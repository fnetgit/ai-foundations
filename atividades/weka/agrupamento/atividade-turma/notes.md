# Anotações sobre a atividade

Primeiro comecei renomeando os títulos das tabelas do [old-dataset-tsc.csv](old-dataset-tsc.csv), também excluí a coluna 'Cabelo 1'(Cabelo 2 virou tipo_cabelo), pois todos os dados eram iguais('curto').

Padronizei os dados, coloquei as primeiras letras em maiúsculas, tirei acentos (incluindo os 'não') e os espaços finais. coloquei as alturas com separador de ponto e não vírgula. [new-dataset-tsc.csv](new-dataset-tsc.csv)

Transformei alguns campos com números em string, como idade e altura. Deixei um espaço antes dos simbolos de >
Fiz o arquivo arff [new-dataset-tsc.arff](new-dataset-tsc.arff) removendo os nomes dos alunos, corrigi nomes com espaços, barras e parênteses (no arrf, se o nome tiver espaços, deve ser colocado entre aspas). Nas chaves, coloquei todos os valores possiveis de algumas colunas, mesmo os que não estavam presentes no dataset, como por exemplo, o atributo 'estado_civil', que tinha apenas 'solteiro' e 'casado', mas adicionei 'viuvo' e 'separado judicialmente'.

Ao rodar o SimpleKMeans, convergiu em 6 iterações. dividi em dois clusters:
Cluster 0: 18 instâncias(altura 1,61-1,70, pardos, não usam óculos, preferem filmes de animação, usam Brave, estão em um relacionamento, e dirigem)

Cluster 1: 12 instâncias(altura 1,71-1,80, brancos, usam óculos, preferem filmes de fantasia, usam Chrome, estão solteiros, e não dirigem)

Fiz também um SimpleKMeans com três clusters. convergiu em 4 iterações.
Cluster 0: 17 pessoas. Usam TypeScript, fullstack, Windows, Chrome, VSCode, pardos, não usam óculos, preferem filmes de Ação, Rock e Jogar
Cluster 1: 7 pessoas. Usam Linux, Brave, Python, brancos, usam óculos, desenhar, filmes de fantasia.
Cluster 2: 6 pessoas. Backend, Python, não moram com os pais, estão em um relacionamento, preferem romance e MPB, cor negra e cabelos cacheados/ondulados.

# similaridade = quantidade de respostas iguais / quantidade total de colunas comparadas

# matriz de similaridade = matriz quadrada onde cada linha e coluna representa um aluno,
#  e o valor em cada célula representa a similaridade entre os alunos correspondentes

import pandas as pd

df = pd.read_csv("new-dataset-tsc.csv")

names = df["nome"]

data_without_names = df.drop(columns=["nome"])

matrix = pd.DataFrame(index=names, columns=names)

for i in range(len(data_without_names)):
    for j in range(len(data_without_names)):
        equals = (data_without_names.iloc[i] == data_without_names.iloc[j]).sum() * 100
        total = len(data_without_names.columns)
        similarity = int(round(equals / total))

        matrix.iloc[i, j] = similarity

matrix.to_csv("similarity_matrix.csv")

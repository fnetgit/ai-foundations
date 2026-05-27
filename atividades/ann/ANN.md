# Atividade sobre Redes Neurais Artificiais

Pela análise do processo de destilação fracionada do petróleo observou-se que determinado óleo poderia ser classificado em duas classes de pureza (P1 e P2)
Utilizando o algoritmo supervisionado de Hebb para classificação de padrões, e assumindo-se a
taxa de aprendizagem como 0,01, faça as seguintes atividades:

- Execute 5 treinamentos para a rede Perceptron, iniciando-se os vetores de pesos (w)
em cada treinamento com valores aleatórios entre zero e um.

- Registre os resultados dos cinco treinamentos em uma tabela contendo:
  - Pesos iniciais
  - Pesos finais
  - Número de épocas

- Após o treinamento do Perceptron, coloque o mesmo em operação, aplicando-o na
classificação automática das amostras conforme a tabela a seguir:

| Amostra | x1      | x2      | x3     | y(T1) | y(T2) | y(T3) | y(T4) | y(T5) |
| ------- | ------- | ------- | ------ | ----- | ----- | ----- | ----- | ----- |
| 1       | -0,3665 | 0,0620  | 5,9891 |       |       |       |       |       |
| 2       | -0,7842 | 1,1267  | 5,5912 |       |       |       |       |       |
| 3       | 0,3012  | 0,5611  | 5,8234 |       |       |       |       |       |
| 4       | 0,7757  | 1,0648  | 8,0677 |       |       |       |       |       |
| 5       | 0,1570  | 0,8028  | 6,3040 |       |       |       |       |       |
| 6       | -0,7014 | 1,0316  | 3,6005 |       |       |       |       |       |
| 7       | 0,3748  | 0,1536  | 6,1537 |       |       |       |       |       |
| 8       | -0,6920 | 0,9404  | 4,4058 |       |       |       |       |       |
| 9       | -1,3970 | 0,7141  | 4,9263 |       |       |       |       |       |
| 10      | -1,8842 | -0,2805 | 1,2548 |       |       |       |       |       |

Obs.: os dados de treinamento estão em [Dados de Treinamento](./dados-de-treinamento.txt)

## Tabela de Resultados

<table>
  <thead>
    <tr>
      <th>Treinamento</th>
      <th colspan="3">Pesos iniciais</th>
      <th colspan="3">Pesos finais</th>
      <th>Épocas</th>
    </tr>
    <tr>
      <th></th>
      <th>x1</th>
      <th>x2</th>
      <th>x3</th>
      <th>x1</th>
      <th>x2</th>
      <th>x3</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>T1</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>T2</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>T3</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>T4</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>T5</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>

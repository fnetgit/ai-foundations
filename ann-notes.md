# Redes Neurais Artificiais

## Introdução

As Redes Neurais Artificiais (ANNs) são modelos computacionais inspirados na estrutura e funcionamento do cérebro humano. Elas são compostas por camadas de neurônios artificiais que processam informações e aprendem a partir de dados. As ANNs são amplamente utilizadas em tarefas de classificação, regressão, reconhecimento de padrões e outras aplicações de aprendizado de máquina.

Em 1943, Warren McCulloch e Walter Pitts propuseram o primeiro modelo matemático inspirado em neurônios biológicos, que foi a base para o desenvolvimento das ANNs. Desde então, as ANNs evoluíram significativamente, com o surgimento de diferentes arquiteturas e algoritmos de treinamento.
Eles conceito de "Neurônio Artificial", que reproduz o comportamento biológico através das seguintes operações matemáticas:

- Sinais de Entrada ($x_i$): Representam os estímulos captados (análogos aos dendritos).
- Pesos Sinápticos ($w_i$): Valores que ponderam a importância de cada entrada.
- Combinador Linear e Limiar ($\theta$): Uma função matemática soma todas as entradas multiplicadas por seus pesos e subtrai um limiar de ativação (análogo ao corpo celular processando a informação) para gerar o potencial de ativação ($u$).
- Função de Ativação ($g(u)$): Decide se o neurônio vai "disparar" ou não o sinal de saída (y), análogo ao axônio transmitindo a informação adiante.

A fórmula geral para o neurônio artificial é dada por:

$$u = \sum_{i=1}^{n} w_i x_i - \theta$$

$$y = g(u)$$

as entradas ($x$) deveriam ser multiplicadas por pesos ($w$), somadas, e depois passadas por uma função matemática ($g(u)$) para gerar uma saída ($y$)

Em 1949, Donald Hebb propôs a primeira regra de aprendizado. O aprendizado em uma RNA consiste na sua capacidade de se adaptar de acordo com dados pré-existentes (experiência). Na prática, a regra de aprendizado atua comparando a resposta que a rede gerou com a resposta correta:

- Se forem iguais: Os pesos permanecem inalterados.
- Se forem diferentes: Os pesos são ajustados para reduzir o erro.

Forma de atualização dos pesos:
$$w_{atual} = w_{anterior} + \eta \cdot (d - y) \cdot x_i$$

em que $\eta$ é a taxa de aprendizagem, $d$ é a resposta desejada, $y$ é a resposta gerada pela rede, e $x_i$ é a entrada correspondente.

Em 1958, Frank Rosenblatt uniu a estrutura matemática de McCulloch e Pitts com a regra de aprendizado de Hebb e desenvolveu o Mark I Perceptron, a forma mais simples de uma RNA (o primeiro neurocomputador). As principais características do Perceptron incluem:

- Arquitetura: Possui a topologia mais básica possível, conhecida como feedforward de camada simples. Isso significa que os dados fluem em um único sentido, passando de uma camada de entrada diretamente para uma única camada de saída contendo apenas um neurônio
  
- Inspiração e Aplicação: Foi fisicamente inspirado no funcionamento da retina humana (utilizando fotocélulas e resistores na sua estrutura) e criado com o objetivo de identificar padrões geométricos

- Limitação Histórica (Teorema da Convergência): O modelo do Perceptron consolidou o início da inteligência artificial, mas esbarrou em um limite matemático: ele só consegue aprender e classificar padrões que sejam linearmente separáveis (ou seja, quando é possível traçar uma única linha reta para separar duas classes diferentes)

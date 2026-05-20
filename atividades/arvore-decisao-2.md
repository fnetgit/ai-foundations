# Tabela de Dados

| Time      | Match type | Court surface | Best effort | Outcome |
| --------- | ---------- | ------------- | ----------- | ------- |
| Morning   | Master     | Grass         | 1           | F       |
| Afternoon | Grand slam | Clay          | 1           | F       |
| Night     | Friendly   | Hard          | 0           | F       |
| Afternoon | Friendly   | Mixed         | 0           | N       |
| Afternoon | Master     | Clay          | 1           | N       |
| Afternoon | Grand slam | Grass         | 1           | F       |
| Afternoon | Grand slam | Hard          | 1           | F       |
| Afternoon | Grand slam | Hard          | 0           | N       |
| Morning   | Master     | Mixed         | 1           | F       |
| Afternoon | Grand slam | Clay          | 1           | N       |
| Night     | Friendly   | Hard          | 1           | F       |
| Night     | Master     | Mixed         | 0           | N       |

|     | Outcome |     |
| --- | ------- | --- |
|     | F       | N   |
|     | 6       | 6   |

|           | Time |     |
| --------- | ---- | --- |
|           | F    | N   |
| Morning   | 2    | 1   |
| Afternoon | 1    | 3   |
| Night     | 3    | 2   |

|            | Match type |     |
| ---------- | ---------- | --- |
|            | F          | N   |
| Master     | 2          | 2   |
| Grand slam | 2          | 3   |
| Friendly   | 2          | 1   |

|       | Court surface |     |
| ----- | ------------- | --- |
|       | F             | N   |
| Grass | 2             | 0   |
| Clay  | 0             | 3   |
| Hard  | 3             | 1   |
| Mixed | 1             | 2   |

|     | Best effort |     |
| --- | ----------- | --- |
|     | F           | N   |
| 0   | 1           | 3   |
| 1   | 5           | 3   |

## 0. Entropia Inicial

Dataset global ($S$): 12 instâncias (6 F, 6 N).
$$E(S) = - \left(\frac{6}{12}\right) \log_2\left(\frac{6}{12}\right) - \left(\frac{6}{12}\right) \log_2\left(\frac{6}{12}\right) = 1.0$$

---

## 1. Feature: Time

Distribuição das 12 instâncias:

* **Morning** (3 instâncias: 2 F, 1 N)
    $$E(Morning) = - \left(\frac{2}{3}\right) \log_2\left(\frac{2}{3}\right) - \left(\frac{1}{3}\right) \log_2\left(\frac{1}{3}\right) = 0.918$$
* **Afternoon** (4 instâncias: 1 F, 3 N)
    $$E(Afternoon) = - \left(\frac{1}{4}\right) \log_2\left(\frac{1}{4}\right) - \left(\frac{3}{4}\right) \log_2\left(\frac{3}{4}\right) = 0.811$$
* **Night** (5 instâncias: 3 F, 2 N)
    $$E(Night) = - \left(\frac{3}{5}\right) \log_2\left(\frac{3}{5}\right) - \left(\frac{2}{5}\right) \log_2\left(\frac{2}{5}\right) = 0.971$$

**Cálculo do Gain:**
$$Gain(Time) = 1.0 - \left[ \left(\frac{3}{12} \times 0.918\right) + \left(\frac{4}{12} \times 0.811\right) + \left(\frac{5}{12} \times 0.971\right) \right]$$
$$Gain(Time) = 1.0 - [0.2295 + 0.2703 + 0.4046]$$

$$Gain(Time) = 1.0 - 0.9044 = 0.0956$$

---

## 2. Feature: Match type

Distribuição das 12 instâncias:

* **Master** (4 instâncias: 2 F, 2 N)
    $$E(Master) = - \left(\frac{2}{4}\right) \log_2\left(\frac{2}{4}\right) - \left(\frac{2}{4}\right) \log_2\left(\frac{2}{4}\right) = 1.0$$
* **Grand slam** (5 instâncias: 2 F, 3 N)
    $$E(Grand\ slam) = - \left(\frac{2}{5}\right) \log_2\left(\frac{2}{5}\right) - \left(\frac{3}{5}\right) \log_2\left(\frac{3}{5}\right) = 0.971$$
* **Friendly** (3 instâncias: 2 F, 1 N)
    $$E(Friendly) = - \left(\frac{2}{3}\right) \log_2\left(\frac{2}{3}\right) - \left(\frac{1}{3}\right) \log_2\left(\frac{1}{3}\right) = 0.918$$

**Cálculo do Gain:**
$$Gain(Match) = 1.0 - \left[ \left(\frac{4}{12} \times 1.0\right) + \left(\frac{5}{12} \times 0.971\right) + \left(\frac{3}{12} \times 0.918\right) \right]$$
$$Gain(Match) = 1.0 - [0.3333 + 0.4046 + 0.2295]$$

$$Gain(Match) = 1.0 - 0.9674 = 0.0326$$

---

## 3. Feature: Best Effort

Distribuição das 12 instâncias:

* **1** (9 instâncias: 5 F, 4 N)
    $$E(1) = - \left(\frac{5}{9}\right) \log_2\left(\frac{5}{9}\right) - \left(\frac{4}{9}\right) \log_2\left(\frac{4}{9}\right) = 0.991$$
* **0** (3 instâncias: 1 F, 2 N)
    $$E(0) = - \left(\frac{1}{3}\right) \log_2\left(\frac{1}{3}\right) - \left(\frac{2}{3}\right) \log_2\left(\frac{2}{3}\right) = 0.918$$

**Cálculo do Gain:**
$$Gain(Best) = 1.0 - \left[ \left(\frac{9}{12} \times 0.991\right) + \left(\frac{3}{12} \times 0.918\right) \right]$$
$$Gain(Best) = 1.0 - [0.7432 + 0.2295]$$

$$Gain(Best) = 1.0 - 0.9727 = 0.0273$$

---

## 4. Feature: Court surface

Distribuição das 12 instâncias:

* **Grass** (2 instâncias: 2 F, 0 N)
    $$E(Grass) = 0.0$$
* **Clay** (3 instâncias: 0 F, 3 N)
    $$E(Clay) = 0.0$$
* **Hard** (4 instâncias: 3 F, 1 N)
    $$E(Hard) = - \left(\frac{3}{4}\right) \log_2\left(\frac{3}{4}\right) - \left(\frac{1}{4}\right) \log_2\left(\frac{1}{4}\right) = 0.811$$
* **Mixed** (3 instâncias: 1 F, 2 N)
    $$E(Mixed) = - \left(\frac{1}{3}\right) \log_2\left(\frac{1}{3}\right) - \left(\frac{2}{3}\right) \log_2\left(\frac{2}{3}\right) = 0.918$$

**Cálculo do Gain:**
$$Gain(Surface) = 1.0 - \left[ \left(\frac{2}{12} \times 0\right) + \left(\frac{3}{12} \times 0\right) + \left(\frac{4}{12} \times 0.811\right) + \left(\frac{3}{12} \times 0.918\right) \right]$$
$$Gain(Surface) = 1.0 - [0 + 0 + 0.2703 + 0.2295]$$

$$Gain(Surface) = 1.0 - 0.4998 = 0.5002$$

---

## Conclusão da Primeira Iteração

| Feature           | Information Gain |
| :---------------- | :--------------- |
| **Court surface** | **0.5002**       |
| Time              | 0.0956           |
| Match type        | 0.0326           |
| Best Effort       | 0.0273           |

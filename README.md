# Feature Engineering: Otimizando a Regressão Linear para Predição de Visitas

Este projeto demonstra como a aplicação técnica de **Engenharia de Atributos (Feature Engineering)** pode elevar drasticamente a performance de um modelo simples de Regressão Linear, atingindo um **R² de 0.8888**.

## 🎯 Objetivo
O desafio consistia em prever o volume de visitas utilizando **apenas** Regressão Linear Simples, focando no poder de transformação dos dados originais para capturar padrões complexos de sazonalidade e tendências.

## 🛠️ Tecnologias Utilizadas
* **Python 3.x**
* **Pandas & Numpy**: Manipulação e tratamento de séries temporais.
* **Scikit-Learn**: Modelagem estatística e métricas.

## 🧠 Estratégia de Feature Engineering
Abaixo estão as técnicas implementadas para transformar uma única coluna de data em um conjunto robusto de preditores:

### 1. Decomposição Temporal
Transformação da data em componentes cíclicos:
* `day_of_week`, `month`, `day_of_month`.
* **Is Payday:** Variável booleana identificando os períodos de início e fim de mês (comportamento típico de consumo/visitas).

### 2. Variáveis de Interação (Dummies)
Criação de dummies para a interação entre `Dia da Semana` e `Mês`. Isso permite que o modelo linear entenda que uma "Sexta-feira em Dezembro" tem um peso diferente de uma "Sexta-feira em Julho".

### 3. Memória do Modelo (Lags & Rolling Stats)
Para capturar a dependência temporal (autocorrelação):
* **Lags (1-14 dias):** O valor dos dias anteriores como entrada para o dia atual.
* **Rolling Statistics:** Média móvel, valores máximos e mínimos dos últimos 7 dias para suavizar ruídos e identificar tendências de curto prazo.

### 4. Tratamento de Feriados e Outliers
* Mapeamento manual de feriados nacionais para capturar quedas ou picos bruscos.
* **Categorização de Datas Especiais:** Criação de colunas específicas para datas com comportamento atípico (outliers extremos), permitindo que o modelo "aprenda" esses eventos isolados sem comprometer a tendência geral.

## 📈 Resultados
Através de uma exploração profunda dos dados e criação de features ricas, o modelo obteve:

| Métrica | Valor |
| :--- | :--- |
| **R² Score (Treino)** | **0.8888** |

> **Nota:** Este resultado prova que, muitas vezes, investir em Engenharia de Atributos é mais valioso do que apenas trocar para modelos mais complexos (Black Boxes).

## 📂 Estrutura do Repositório
* `visits.csv`: Dataset original de séries temporais.
* `Eng-Feature.ipynb`: Notebook com todo o pipeline de tratamento e modelagem.
* `requirements.txt`: Bibliotecas necessárias para replicação.

---
Desenvolvido por [Seu Nome] 🚀


# Relatório de Análise de Dados — Cloud Analytics com Olist

## 1. Introdução

Este relatório apresenta os principais insights extraídos do **Data Warehouse** construído com base nos dados públicos da **Olist**, maior loja de departamentos dos marketplaces brasileiros.

A arquitetura desenvolvida contempla:

- Modelagem dimensional em **Star Schema**;
- Data Warehouse em **Supabase (PostgreSQL)**;
- Pipeline de **ETL** utilizando **Apache Hop**;
- Visualização dos dados no **Preset.io (Apache Superset)**.

As análises respondem a cinco perguntas de negócio definidas pelo grupo, abordando faturamento, logística e comportamento de vendas.

---

## 2. Perguntas de Negócio e Insights

### 2.1 Faturamento por Categoria de Produto

O gráfico de barras evidencia uma forte concentração de receita em poucas categorias. As categorias de maior faturamento se destacam com valores superiores a **R$ 1,2 milhão**, enquanto a maioria das demais categorias apresenta faturamento significativamente menor.

Esse comportamento indica oportunidades para:

- Expandir o mix de produtos nas categorias de maior desempenho;
- Revisar estratégias para categorias com baixo faturamento;
- Diversificar a distribuição da receita entre as categorias.

---

### 2.2 Vendas por Estado do Cliente

A distribuição geográfica das vendas revela uma concentração expressiva no estado de **São Paulo (SP)**, que ultrapassa **R$ 5 milhões** em volume de vendas. Em seguida aparecem **Rio de Janeiro (RJ)** e **Minas Gerais (MG)** com valores consideravelmente menores.

Os demais estados possuem participação reduzida, indicando potencial de crescimento principalmente nas regiões **Norte** e **Centro-Oeste**, que atualmente representam pequena parcela do faturamento.

---

### 2.3 Frete Médio por Estado

O frete médio apresenta variações relevantes entre os estados, oscilando aproximadamente entre **R$ 100** e **R$ 190**.

Estados das regiões **Norte** e **Nordeste** tendem a apresentar fretes mais elevados devido à distância dos principais centros de distribuição localizados no Sudeste.

Esse cenário representa um gargalo logístico que impacta diretamente:

- A competitividade da plataforma;
- O custo final para o consumidor;
- O potencial de expansão nessas regiões.

---

### 2.4 Evolução Temporal das Vendas

O gráfico de linha demonstra um crescimento acelerado no volume de pedidos entre **2017** e meados de **2018**, atingindo um pico aproximado de **8.500 pedidos mensais**.

A partir do segundo semestre de 2018 observa-se uma queda abrupta, seguida do encerramento dos registros em 2019.

Esse comportamento reflete o período coberto pelo dataset e **não representa necessariamente uma retração real do negócio**, mas sim o limite temporal dos dados disponibilizados.

---

### 2.5 Receita por Estado do Vendedor

A receita gerada por estado do vendedor apresenta concentração ainda maior do que a observada na distribuição dos clientes.

O estado de **São Paulo (SP)** responde por mais de **R$ 8 milhões**, enquanto **Minas Gerais (MG)** e **Rio de Janeiro (RJ)** aparecem em seguida com valores significativamente inferiores.

Essa concentração indica que a maior parte dos lojistas parceiros da Olist está estabelecida em São Paulo, o que representa:

- Maior eficiência logística;
- Facilidade operacional;
- Dependência regional da operação.

---

## 3. Conclusão

A análise dos dados da Olist revela uma operação fortemente concentrada na região Sudeste, tanto na base de clientes quanto na localização dos vendedores.

As principais oportunidades identificadas foram:

- Expansão da presença comercial em estados com elevado frete médio;
- Negociação de acordos logísticos regionais;
- Diversificação das categorias de produtos para reduzir a dependência das categorias mais rentáveis;
- Incentivo à entrada de novos vendedores fora do eixo **SP–RJ–MG**, distribuindo melhor a operação e reduzindo custos logísticos.

---

## 4. Nota Técnica

O projeto foi desenvolvido utilizando a seguinte stack tecnológica:

| Componente | Tecnologia |
|------------|------------|
| **Modelagem** | Star Schema com dimensões e tabela fato |
| **Data Warehouse** | Supabase (PostgreSQL na nuvem) |
| **ETL** | Apache Hop com pipelines (`.hpl`) e workflows (`.hwf`) |
| **Business Intelligence** | Preset.io (Apache Superset) |
| **Dashboards** | 5 gráficos interativos |
| **Dataset** | https://github.com/olist/work-at-olist-data |

---

## 5. Considerações Finais

Os dashboards desenvolvidos permitiram identificar padrões relevantes de faturamento, logística e distribuição geográfica das vendas, demonstrando como uma arquitetura de **Cloud Analytics** pode transformar dados transacionais em informações estratégicas para apoio à tomada de decisão.
# Cloud Analytics com Olist

## 📖 Sobre o projeto

Este repositório reúne os artefatos desenvolvidos para a atividade **Cloud Analytics com Olist**, proposta na disciplina de **Tópicos Avançados em Banco de Dados**.

O objetivo do projeto foi construir uma arquitetura moderna de análise de dados utilizando o conjunto de dados público da Olist, passando por todas as etapas de um projeto de Business Intelligence:

- Modelagem Dimensional (Star Schema);
- Implementação do Data Warehouse em PostgreSQL (Supabase);
- Desenvolvimento do pipeline de ETL utilizando Apache Hop;
- Construção de dashboards analíticos no Preset.io (Apache Superset).

Durante o desenvolvimento foram elaborados o modelo dimensional, a documentação das tabelas fato e dimensões, os processos de carga dos dados e os dashboards para responder às principais questões de negócio propostas pela atividade. :contentReference[oaicite:0]{index=0} :contentReference[oaicite:1]{index=1} :contentReference[oaicite:2]{index=2}

---

## 📂 Estrutura do repositório

O repositório está organizado contendo os seguintes materiais:

- **Modelo Dimensional**
  - Modelo conceitual (Star Schema);
  - Modelo físico (DER);
  - Documentação das dimensões e tabela fato.

- **Banco de Dados**
  - Scripts DDL para criação das tabelas;
  - Estrutura do Data Warehouse.

- **ETL**
  - Pipelines (.hpl);
  - Workflows (.hwf);
  - Processos de carga para o ambiente em nuvem.

- **Business Intelligence**
  - Dashboard desenvolvido no Preset.io;
  - Relatório com as análises obtidas.

---

## 🏗️ Arquitetura

O projeto foi desenvolvido seguindo uma arquitetura de Data Warehouse baseada em **Star Schema**, composta por:

- 1 tabela fato (`fato_pedido_item`);
- 6 tabelas dimensão:
  - `dim_tempo`
  - `dim_cliente`
  - `dim_produto`
  - `dim_vendedor`
  - `dim_pagamento`
  - `dim_avaliacao`

Esse modelo foi projetado para otimizar consultas analíticas e facilitar a construção dos dashboards de BI. :contentReference[oaicite:3]{index=3}

---

## 🛠️ Tecnologias utilizadas

- PostgreSQL
- Supabase
- Apache Hop
- Preset.io (Apache Superset)
- Git/GitHub

---

## 👥 Integrantes

Projeto desenvolvido por:

- Daniel Araújo
- Gabriel Sousa
- Jefferson Santos
- José Arthur
- José Davi

Sob orientação do professor **Ítalo Carlo Lopes Silva**.

---

## 📄 Observação

Este repositório foi desenvolvido exclusivamente para fins acadêmicos, como atividade da disciplina **Tópicos Avançados em Banco de Dados**, utilizando o dataset público disponibilizado pela Olist.

# A Tabela Central: Fato
A tabela fato_pedido_item registra cada item vendido em um pedido. Ela é composta por três categorias principais de colunas:

1. Chave Primária (PK): sk_pedido_item (Identificador único do registro).

2. Chaves Estrangeiras (FK): Códigos que conectam a venda ao seu respectivo contexto nas dimensões (sk_tempo, sk_cliente, sk_produto, sk_vendedor, sk_pagamento, sk_avaliacao).

3. Métricas/Fatos: Os valores numéricos analisáveis da venda:
    * preco (Preço do item)
    * valor_frete (Custo do frete associado ao item)
    * quantidade (Volume de itens)

# As Tabelas de Dimensão (O Contexto)
As dimensões explicam o "Quem, O que, Onde e Quando" dos dados registrados na tabela fato. Cada dimensão possui uma Surrogate Key (Chave Substituta) identificada pelo prefixo sk_, que atua como Chave Primária (PK).

1. dim_tempo (Quando o pedido ocorreu):
    * Permite analisar as vendas ao longo do tempo.
    * Atributos: data_completa, ano, mes, nome_mes, trimestre, dia, dia_semana, nome_dia.

2. dim_cliente (Quem comprou):
    * Armazena os dados geográficos e de identificação dos compradores.
    * Atributos: customer_id, customer_unique_id, cidade, estado, regiao.
3. dim_produto (O que foi comprado):
    * Detalha os atributos físicos e de categorização dos itens.
    * Atributos: product_id, categoria do produto (em português e inglês), quantidade de fotos (fotos_produto), e dimensões físicas (peso_g, comprimento_cm, altura_cm, largura_cm).

4. dim_vendedor (Quem vendeu):
    * Mapeia os lojistas/parceiros da plataforma e sua localização.
    * Atributos: seller_id, cidade, estado, regiao.

5. dim_pagamento (Como foi pago):
    * Descreve os dados transacionais da compra.
    * Atributos: order_id, tipo_pagamento (ex: cartão, boleto, pix), número de parcelas, e o valor_pagamento total daquela modalidade.

6. dim_avaliacao (Qual a satisfação do cliente):
    * Armazena os feedbacks deixados pelos clientes em relação aos pedidos.
    * Atributos: review_id, order_id, nota (score da avaliação), titulo_comentario, texto do comentario e a data de resposta (data_reposta).

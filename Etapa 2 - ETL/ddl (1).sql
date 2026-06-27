CREATE TABLE public.dim_avaliacao (
    sk_avaliacao      BIGINT  NOT NULL PRIMARY KEY,
    review_id         VARCHAR,
    order_id          VARCHAR,
    nota              INTEGER,
    titulo_comentario VARCHAR,
    comentario        TEXT,
    data_resposta     DATE
);

CREATE TABLE public.dim_cliente (
    sk_cliente         BIGINT NOT NULL PRIMARY KEY,
    customer_id        VARCHAR,
    customer_unique_id VARCHAR,
    cidade             VARCHAR,
    estado             VARCHAR,
    regiao             VARCHAR
);

CREATE TABLE public.dim_pagamento (
    sk_pagamento    BIGINT  NOT NULL PRIMARY KEY,
    order_id        VARCHAR,
    tipo_pagamento  VARCHAR,
    parcelas        INTEGER,
    valor_pagamento NUMERIC
);

CREATE TABLE public.dim_produto (
    sk_produto     BIGINT  NOT NULL PRIMARY KEY,
    product_id     VARCHAR,
    categoria_pt   VARCHAR,
    categoria_en   VARCHAR,
    fotos_produto  INTEGER,
    peso_g         NUMERIC,
    comprimento_cm NUMERIC,
    altura_cm      NUMERIC,
    largura_cm     NUMERIC
);

CREATE TABLE public.dim_tempo (
    sk_tempo      BIGINT  NOT NULL PRIMARY KEY,
    data_completa DATE,
    ano           INTEGER,
    mes           INTEGER,
    nome_mes      VARCHAR,
    trimestre     VARCHAR,
    dia           INTEGER,
    dia_semana    INTEGER,
    nome_dia      VARCHAR
);

CREATE TABLE public.dim_vendedor (
    sk_vendedor BIGINT NOT NULL PRIMARY KEY,
    seller_id   VARCHAR,
    cidade      VARCHAR,
    estado      VARCHAR,
    regiao      VARCHAR
);

CREATE TABLE public.fato_pedido_item (
    sk_pedido_item BIGINT  NOT NULL PRIMARY KEY,
    sk_tempo       BIGINT  REFERENCES public.dim_tempo(sk_tempo),
    sk_cliente     BIGINT  REFERENCES public.dim_cliente(sk_cliente),
    sk_produto     BIGINT  REFERENCES public.dim_produto(sk_produto),
    sk_vendedor    BIGINT  REFERENCES public.dim_vendedor(sk_vendedor),
    sk_pagamento   BIGINT  REFERENCES public.dim_pagamento(sk_pagamento),
    sk_avaliacao   BIGINT  REFERENCES public.dim_avaliacao(sk_avaliacao),
    order_id       VARCHAR,
    order_item_id  VARCHAR,
    preco          NUMERIC,
    valor_frete    NUMERIC,
    quantidade     INTEGER
);

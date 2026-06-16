-- ====================================================================
-- CRIAÇÃO DA TABELA DE PRODUTOS (SEM RESTRIÇÕES)
-- Enunciado: Escreva o comando SQL CREATE TABLE para criar a tabela de 
-- produtos sem restrições. Para cada atributo, indique o tipo de dado.
-- ====================================================================

CREATE TABLE produtos (
    produto_name VARCHAR(100), -- escolhi varchar por ser texto com tamanhos que mudam de item para item.
    categoria VARCHAR(100),    -- escolhi varchar por ser texto com tamanhos que mudam de item para item.
    preco DECIMAL,             -- escolhi decimal porque o valor de dinheiro sempre tem números quebrados (casas decimais).
    peso_gramas INTEGER        -- escolhi integer porque o número do peso em gramas é inteiro e sem números quebrados ou vírgulas.
);


-- ====================================================================
-- RESTRIÇÕES DA TABELA DE PRODUTOS
-- Enunciado: Reescreva o comando incluindo agora as restrições 
-- PRIMARY KEY, NOT NULL e UNIQUE (caso exista), justificando a escolha.
-- ====================================================================

CREATE TABLE produtos (
    produto_name VARCHAR(100) PRIMARY KEY, -- nome do produto ficou como a chave primária.
    categoria VARCHAR(100),
    preco DECIMAL NOT NULL,                -- campo que será obrigatório preencher.
    peso_gramas INTEGER NOT NULL           -- campo que será obrigatório preencher.
);


-- ====================================================================
-- CRIAÇÃO DA TABELA DE CLIENTES RESPEITANDO A 3FN (NORMALIZAÇÃO)
-- Enunciado: Reorganize as informações de localização em tabelas 
-- separadas (endereços e clientes) para resolver a violação de 3FN.
-- ====================================================================

CREATE TABLE enderecos (
    cep VARCHAR(30) PRIMARY KEY,
    cidade_cliente VARCHAR(30) NOT NULL,
    estado_cliente VARCHAR(30) NOT NULL
);

CREATE TABLE cliente (
    cliente_cpf VARCHAR(30) PRIMARY KEY,
    cep VARCHAR(30) NOT NULL,
    FOREIGN KEY (cep) REFERENCES enderecos(cep)
);

-- JUSTIFICATIVA DA 3FN:
-- Esta separação resolve a violação da Terceira Forma Normal porque a 
-- cidade e o estado dependem exclusivamente do CEP, e não do CPF do cliente.
-- Isolando esses dados, evitamos repetições e erros no banco de dados.

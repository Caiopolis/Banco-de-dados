CREATE TABLE Table_Pagamento (
  id_Pagamento(PK) INTEGER   NOT NULL ,
  Numero_Cartão_Pagamento INTEGER   NOT NULL ,
  Nome_Titular_Pagamento VARCHAR(50)   NOT NULL ,
  Cvv_Pagamento INT   NOT NULL ,
  Data_Vencimento_Pagamento INTEGER   NOT NULL ,
  Tipo_Pagamento VARCHAR(20)   NOT NULL   ,
PRIMARY KEY(id_Pagamento(PK)));

COMMENT ON COLUMN Table_Pagamento.id_Pagamento(PK) IS 'Informaçãoes do pagamento';
COMMENT ON COLUMN Table_Pagamento.Numero_Cartão_Pagamento IS 'Numero do cartão';
COMMENT ON COLUMN Table_Pagamento.Nome_Titular_Pagamento IS 'nome do titular';
COMMENT ON COLUMN Table_Pagamento.Cvv_Pagamento IS 'numero de segurança do cartão';
COMMENT ON COLUMN Table_Pagamento.Data_Vencimento_Pagamento IS 'Data de vencimento do cartão[';
COMMENT ON COLUMN Table_Pagamento.Tipo_Pagamento IS 'Tipo do pagamento (PIX, Crédito, Débito ou boleto)';



CREATE TABLE Table_Cliente (
  id_Cliente(PK) INTEGER   NOT NULL ,
  Nome_Cliente VARCHAR(40)   NOT NULL ,
  Cep_Cliente VARCHAR(10)   NOT NULL ,
  Cpf_Cliente VARCHAR(15)   NOT NULL ,
  Email_Cliente VARCHAR(100)   NOT NULL ,
  Data_Nascimento_Cliente VARCHAR(30)      ,
PRIMARY KEY(id_Cliente(PK)));

COMMENT ON COLUMN Table_Cliente.id_Cliente(PK) IS 'Informação Cliente';
COMMENT ON COLUMN Table_Cliente.Nome_Cliente IS 'Nome do Cliente';
COMMENT ON COLUMN Table_Cliente.Cep_Cliente IS 'CEP do Cliente';
COMMENT ON COLUMN Table_Cliente.Cpf_Cliente IS 'CPF do Cliente';
COMMENT ON COLUMN Table_Cliente.Email_Cliente IS 'E-mail do Cliente';
COMMENT ON COLUMN Table_Cliente.Data_Nascimento_Cliente IS 'Data de Nascimento Cliente';



CREATE TABLE Table_Carro (
  id_Carro(PK) INTEGER   NOT NULL ,
  Modelo_Carro VARCHAR(20)   NOT NULL ,
  Placa_Carro VARCHAR(15)   NOT NULL ,
  Gasolina_Carro FLOAT    ,
  Energia_Carro FLOAT    ,
  Tipo_Carro VARCHAR(25)   NOT NULL   ,
PRIMARY KEY(id_Carro(PK)));

COMMENT ON COLUMN Table_Carro.id_Carro(PK) IS 'Informação do carro';
COMMENT ON COLUMN Table_Carro.Modelo_Carro IS 'Modelo do carro';
COMMENT ON COLUMN Table_Carro.Placa_Carro IS 'Placa do carro';
COMMENT ON COLUMN Table_Carro.Gasolina_Carro IS 'Quantidade gasolin do carro';
COMMENT ON COLUMN Table_Carro.Energia_Carro IS 'Energia do carro';
COMMENT ON COLUMN Table_Carro.Tipo_Carro IS 'Tipo do carro(Autonomo ou manual)';



CREATE TABLE Table_Rota (
  id_Rota(PK) INTEGER   NOT NULL ,
  Table_Carro_id_Carro(PK) INTEGER   NOT NULL ,
  Origem_Rota VARCHAR(30)   NOT NULL ,
  Destino_Rota VARCHAR(30)   NOT NULL ,
  Distância_Rota FLOAT   NOT NULL ,
  Tempo_Estimado_Rota VARCHAR(20)   NOT NULL   ,
PRIMARY KEY(id_Rota(PK))  ,
  FOREIGN KEY(Table_Carro_id_Carro(PK))
    REFERENCES Table_Carro(id_Carro(PK)));


CREATE INDEX Table_Rota_FKIndex1 ON Table_Rota (Table_Carro_id_Carro(PK));

COMMENT ON COLUMN Table_Rota.id_Rota(PK) IS 'Informação da rota';
COMMENT ON COLUMN Table_Rota.Origem_Rota IS 'Nome da origem da rota';
COMMENT ON COLUMN Table_Rota.Destino_Rota IS 'Nome do destino da rota';
COMMENT ON COLUMN Table_Rota.Distância_Rota IS 'Distancia da Rota';
COMMENT ON COLUMN Table_Rota.Tempo_Estimado_Rota IS 'Tempo Estimado da Rota';

CREATE INDEX IFK_Caaro ir em rota ON Table_Rota (Table_Carro_id_Carro(PK));


CREATE TABLE Table_Produto (
  id_Produto(PK) INTEGER   NOT NULL ,
  Table_Pagamento_id_Pagamento(PK) INTEGER   NOT NULL ,
  Nome_Produto VARCHAR(50)   NOT NULL ,
  Largura_Produto FLOAT   NOT NULL ,
  Altura_Produto FLOAT   NOT NULL ,
  Comprimento_Produto FLOAT   NOT NULL ,
  Peço_Produto INTEGER   NOT NULL ,
  Preço_Produto FLOAT   NOT NULL   ,
PRIMARY KEY(id_Produto(PK))  ,
  FOREIGN KEY(Table_Pagamento_id_Pagamento(PK))
    REFERENCES Table_Pagamento(id_Pagamento(PK)));


CREATE INDEX Table_Produto_FKIndex1 ON Table_Produto (Table_Pagamento_id_Pagamento(PK));

COMMENT ON COLUMN Table_Produto.id_Produto(PK) IS 'Informação Produto';
COMMENT ON COLUMN Table_Produto.Nome_Produto IS 'Nome do Produto';
COMMENT ON COLUMN Table_Produto.Largura_Produto IS 'Largura do Produto';
COMMENT ON COLUMN Table_Produto.Altura_Produto IS 'Altura do Produto';
COMMENT ON COLUMN Table_Produto.Comprimento_Produto IS 'Comprimento do Produto';
COMMENT ON COLUMN Table_Produto.Peço_Produto IS 'Peço do Produto';
COMMENT ON COLUMN Table_Produto.Preço_Produto IS 'Preço do Produto';

CREATE INDEX IFK_Pagamento ON Table_Produto (Table_Pagamento_id_Pagamento(PK));


CREATE TABLE Table_Estoque (
  id_Estoque(PK) INTEGER   NOT NULL ,
  Table_Carro_id_Carro(PK) INTEGER   NOT NULL ,
  Info_Estoque VARCHAR(20)   NOT NULL ,
  Nome_Item_Estoque VARCHAR(30)   NOT NULL ,
  Quantidade_Estoque INT   NOT NULL   ,
PRIMARY KEY(id_Estoque(PK))  ,
  FOREIGN KEY(Table_Carro_id_Carro(PK))
    REFERENCES Table_Carro(id_Carro(PK)));


CREATE INDEX Table_Estoque_FKIndex1 ON Table_Estoque (Table_Carro_id_Carro(PK));

COMMENT ON COLUMN Table_Estoque.id_Estoque(PK) IS 'Informação do Estoque';
COMMENT ON COLUMN Table_Estoque.Info_Estoque IS 'Informações dos itens do Estoque';
COMMENT ON COLUMN Table_Estoque.Nome_Item_Estoque IS 'Nome do Produto em estoque';
COMMENT ON COLUMN Table_Estoque.Quantidade_Estoque IS 'Quantidade de produtos em estoque';

CREATE INDEX IFK_Carro ir em Estoque ON Table_Estoque (Table_Carro_id_Carro(PK));


CREATE TABLE Table_Fornecer_Carro_Produto (
  Table_Produto_id_Produto(PK) INTEGER   NOT NULL ,
  Table_Carro_id_Carro(PK) INTEGER   NOT NULL   ,
PRIMARY KEY(Table_Produto_id_Produto(PK), Table_Carro_id_Carro(PK))    ,
  FOREIGN KEY(Table_Carro_id_Carro(PK))
    REFERENCES Table_Carro(id_Carro(PK)),
  FOREIGN KEY(Table_Produto_id_Produto(PK))
    REFERENCES Table_Produto(id_Produto(PK)));


CREATE INDEX Table_Fornecer_Carro_Produto_FKIndex1 ON Table_Fornecer_Carro_Produto (Table_Carro_id_Carro(PK));
CREATE INDEX Table_Fornecer_Carro_Produto_FKIndex2 ON Table_Fornecer_Carro_Produto (Table_Produto_id_Produto(PK));


CREATE INDEX IFK_Compatibilidade Carro e Pr ON Table_Fornecer_Carro_Produto (Table_Carro_id_Carro(PK));
CREATE INDEX IFK_Relação Produto e Carro ON Table_Fornecer_Carro_Produto (Table_Produto_id_Produto(PK));


CREATE TABLE Table_Produto_has_Table_Estoque (
  Table_Produto_id_Produto(PK) INTEGER   NOT NULL ,
  Table_Estoque_id_Estoque(PK) INTEGER   NOT NULL   ,
PRIMARY KEY(Table_Produto_id_Produto(PK), Table_Estoque_id_Estoque(PK))    ,
  FOREIGN KEY(Table_Produto_id_Produto(PK))
    REFERENCES Table_Produto(id_Produto(PK)),
  FOREIGN KEY(Table_Estoque_id_Estoque(PK))
    REFERENCES Table_Estoque(id_Estoque(PK)));


CREATE INDEX Table_Produto_has_Table_Estoque_FKIndex1 ON Table_Produto_has_Table_Estoque (Table_Produto_id_Produto(PK));
CREATE INDEX Table_Produto_has_Table_Estoque_FKIndex2 ON Table_Produto_has_Table_Estoque (Table_Estoque_id_Estoque(PK));


CREATE INDEX IFK_Produto em Estoque ON Table_Produto_has_Table_Estoque (Table_Produto_id_Produto(PK));
CREATE INDEX IFK_Produto em estoque ON Table_Produto_has_Table_Estoque (Table_Estoque_id_Estoque(PK));


CREATE TABLE Table_Realizar_Pedido (
  Table_Cliente_id_Cliente(PK) INTEGER   NOT NULL ,
  Table_Produto_id_Produto(PK) INTEGER   NOT NULL   ,
PRIMARY KEY(Table_Cliente_id_Cliente(PK), Table_Produto_id_Produto(PK))    ,
  FOREIGN KEY(Table_Cliente_id_Cliente(PK))
    REFERENCES Table_Cliente(id_Cliente(PK)),
  FOREIGN KEY(Table_Produto_id_Produto(PK))
    REFERENCES Table_Produto(id_Produto(PK)));


CREATE INDEX Table_Cliente_has_Table_Produto_FKIndex1 ON Table_Realizar_Pedido (Table_Cliente_id_Cliente(PK));
CREATE INDEX Table_Cliente_has_Table_Produto_FKIndex2 ON Table_Realizar_Pedido (Table_Produto_id_Produto(PK));


CREATE INDEX IFK_Login ON Table_Realizar_Pedido (Table_Cliente_id_Cliente(PK));
CREATE INDEX IFK_Pedido ON Table_Realizar_Pedido (Table_Produto_id_Produto(PK));


CREATE TABLE Table_Recebimento (
  id_Recebimento(PK) INTEGER   NOT NULL ,
  Table_Rota_id_Rota(PK) INTEGER   NOT NULL ,
  Token_Recebimento VARCHAR(10)   NOT NULL ,
  Hora_Rcebimento VARCHAR(30)   NOT NULL ,
  Hora_Saida_Recebimento VARCHAR(30)   NOT NULL   ,
PRIMARY KEY(id_Recebimento(PK))  ,
  FOREIGN KEY(Table_Rota_id_Rota(PK))
    REFERENCES Table_Rota(id_Rota(PK)));


CREATE INDEX Table_Recebimento_FKIndex1 ON Table_Recebimento (Table_Rota_id_Rota(PK));

COMMENT ON COLUMN Table_Recebimento.id_Recebimento(PK) IS 'Informação do recebimento';
COMMENT ON COLUMN Table_Recebimento.Token_Recebimento IS 'Token para a liberação do receboimento';
COMMENT ON COLUMN Table_Recebimento.Hora_Rcebimento IS 'Horario do recebimento';
COMMENT ON COLUMN Table_Recebimento.Hora_Saida_Recebimento IS 'Horario da saida do recebimento';

CREATE INDEX IFK_Entrega ON Table_Recebimento (Table_Rota_id_Rota(PK));




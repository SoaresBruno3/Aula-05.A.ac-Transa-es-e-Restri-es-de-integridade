--Questão 01. Crie uma tabela pessoa com os campos ID, nome, sobrenome e idade. Crie uma cláusula de checagem para o campo idade, impedindo que valores menores que 0 sejam adicionados.


CREATE TABLE pessoa (
    id int PRIMARY KEY,
    nome varchar(30),
    sobrenome varchar(50),
    idade int CHECK (idade >= 0)
);

--Questão 02. Altere a tabela pessoa e crie uma restrição utilizando a especificação unique ( A1, A2, …, Am) para os campos ID, nome e sobrenome.

ALTER TABLE pessoa
ADD CONSTRAINT uni_id_nome_sobreno
UNIQUE (id, nome, sobrenome);

--Questão 03. Altere a coluna idade da tabela pessoa e garanta que ela não receba valores nulos.

ALTER TABLE pessoa
ALTER COLUMN idade int not null;

--Questão 04. Crie uma tabela endereco com os campos ID e rua. Adicione o campo endereco na tabela pessoa e crie uma integridade referencial a partir deste campo com a tabela endereco.

CREATE TABLE endereco (
	id int PRIMARY KEY,
	rua varchar(100)
);

ALTER TABLE pessoa
ADD endereco_id int;

ALTER TABLE pessoa
ADD CONSTRAINT fk_endereco
FOREIGN KEY (endereco_id)
REFERENCES endereco(id);







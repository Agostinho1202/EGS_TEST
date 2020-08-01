-- comando para criação de um data base
create database EGS_TESTE


-- comando para seleção de um database
use EGS_TESTE

-- comando para criação de tabela no sql server
create table pedidos(
	idpedido int primary key,
	nomeCliente varchar(45) not null,
	dataHora DATETIME null default (CURRENT_TIMESTAMP),
	valorPedido float not null

)

select * from pedidos
--comando para inserir um pedido na tabela
insert into pedidos values (1,'William',current_timestamp,500)
insert into pedidos values (2, 'Marcos', '2020-08-17 14:00:03.125',1200)

select @@language

--comando para dar update na data/hora
update pedidos
set dataHora = CAST(CONVERT(varchar(10), GETDATE(), 103) AS datetime)
where idpedido = 1


-- comando para criação de tabela no sql server
create table produtos(
	idproduto int primary key,
	nomeProduto varchar(45) not null,
	valorProduto float not null
)

select * from produtos
--comando para inserir um produto na tabela
insert into produtos values (1,'TV LED',500)
insert into produtos values (2,'Celular',900)
insert into produtos values (3,'Mesa',600)

-- comando para alterar valor na tabela
update produtos
set valorProduto = 1000
where idproduto = 2

select * from produtos

--comando para deletar um produto pelo ID
delete from produtos
where idproduto = 1

select * from produtos
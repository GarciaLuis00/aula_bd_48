#criaçâo do banco de dados
create database empresa_xpto; 

#ativar o banco de dados 
use empresa_xpto; 
 
 #criar tabela funcionários 
create table funcionarios (
id int auto_increment,
nome varchar(60),
sobrenome varchar(60),
salario decimal (10,2),
primary key (id)
);

#inserir arquivos para o banco de dados
load data infile 'c:/programdata/mysql/mysql server 8.0/uploads/funcionarios.csv'
into table funcionarios
fields terminated by ','
lines terminated by '\n'
ignore 1 lines 
(nome,sobrenome,salario) set id= null;

#selecionar todos os funcionários
select * from funcionarios;

#selecionar todos os funcionários onde o salário é menor que R$ 1238.11
select * from funcionarios where salario < 1238.11;

#selecionar nome e sobrenome dos funcionários ordenado pelo salário limitado por 5
select nome,sobrenome from funcionarios order by salario limit 5;

#selecionar nome e sobrenome dos funcionários ordenados pelo salario limitado por 5
select nome,sobrenome from funcionarios order by salario desc limit 5;

#selecionar todos os funcionários que o nome seja carlo ou gill
select * from funcionarios where nome = 'carlo' or  nome = 'gil';

#selecionar todos os funcionários que o nome seja carlo ou gill e que o salário seja maior que R$ 15000
select * from funcionarios where (nome = 'carlo' or nome = 'gil') and salario > 15000; 

#selecionar todos os funcionários que o sobrenome seja benn ou sobrenome ramet 
select * from funcionarios where sobrenome = 'benn' or sobrenome = 'ramet';

#selecionar todos os funcionários que o sobrenome seja benn ou ramet e que o salário seja menor que R$ 5000
select * from funcionarios where (sobrenome = 'benn' or sobrenome = 'ramet') and salario < 5000;

#selecionar todos os funcionários onde o salário seja entre R$ 5000 e R$ 10000
select * from funcionarios where salario between 5000 and 10000;

#selecionar nome e sobrenome dos funcionários que o salário entre R$ 2000 e R$ 3000
select nome,sobrenome from funcionarios where salario between 2000 and 3000;

#somar o salário dos funcionários
select sum(salario) as soma_salarios from funcionarios; 

#determinar média dos salários dos funcionários
select avg (salario) as media_salarios from funcionarios;
 
#contar o total de funcionários
select count(*) as total_funcionarios from funcionarios;

#determinar o salário máximo dos funcionários
select max(salario) as maior_salario from funcionarios;
 
#determinar o mínimo dos salário dos funcionários
select min(salario) as menor_salario from funcionarios;

#selecionar o total dos funcionários onde o salário seja maior que R$ 15000
select count(*) as total from funcionarios where salario > 15000;

#selecionar o total dos funcionários onde o salário seja entre R$ 1212 e R$ 5000
select count(*) as total from funcionarios where salario between 1212 and 5000;

#selecionar o total de funcionários onde o salário seja entre R$ 5001 e R$ 10000
select count(*) as total from funcionarios where salario between 5001 and 10000;

#selecionar o total de funcionários onde o salário seja entre R$ 10001 e R$ 15000
select count(*) as total from funcionarios where salario between 10001 and 15000;
















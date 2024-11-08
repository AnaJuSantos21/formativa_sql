Create database universidade;
use universidade;


create table universidade(
id_uni int primary key auto_increment,
nome varchar (200),
telefone varchar (200),
rua varchar (200),
cidade varchar (200),
numero int,
cep varchar (200),
bairro varchar (200)
);

create table estudante(
id_estudante int primary key auto_increment,
nome varchar (200),
telefone varchar (200),
rua varchar (200),
cidade varchar (200),
numero int,
cep varchar (200),
bairro varchar (200),
id_uni int,
foreign key(id_uni) references universidade(id_uni)
);


INSERT INTO universidade(nome, telefone, rua, cidade, numero, cep, bairro)
values 
('Universidade Federal do Paraná', '(41) 3360-5000', 'Rua XV de Novembro', 'Curitiba', '1299', '80060-000', 'Centro'),
('Universidade Estadual Paulista Júlio de Mesquita Filho', '(18) 3229-5242', 'Rua José Barbosa de Barros', 'Botucatu', '1780', '18610-307', 'Rubião Júnior'),
('Universidade Federal do Ceará', '(85) 3366-7300', 'Av. da Universidade', 'Fortaleza', '2853', '60020-181', 'Benfica'),
('Universidade Federal de Pernambuco', '(81) 2126-8000', 'Av. Professor Moraes Rego', 'Recife', '1235', '50670-901', 'Cidade Universitária'),
('Universidade Estadual do Rio de Janeiro', '(21) 2334-0639', 'Rua São Francisco Xavier', 'Rio de Janeiro', '524', '20550-013', 'Maracanã');

INSERT INTO estudante(nome, telefone, rua, cidade, numero, cep, bairro, id_uni)
values
('Ana Souza', '(11) 98765-4321', 'Rua das Flores', 'São Paulo', '15', '01310-100', 'Jardins', 1),
('Carlos Pereira', '(19) 91234-5678', 'Av. Brasil', 'Campinas', '750', '13070-178', 'Jardim do Lago', 2),
('Mariana Oliveira', '(21) 99876-5432', 'Rua Santa Clara', 'Rio de Janeiro', '120', '22041-011', 'Copacabana', 3),
('Lucas Andrade', '(61) 99321-6789', 'SQN 404', 'Brasília', '10', '70845-030', 'Asa Norte', 4),
('Fernanda Lima', '(31) 99845-1234', 'Av. Cristiano Machado', 'Belo Horizonte', '2000', '31170-800', 'Cidade Nova', 5);

select * from universidade;
select * from estudante;

UPDATE estudante
set nome = "Ana Santos"
where id_estudante = 1;
       
UPDATE universidade
set nome = "Usp- universidade de São Paulo"
where id_uni = 3;
       
delete from estudante
where id_estudante = 5;
       
CREATE view  vw_estudante_uni as
SELECT
estudante.nome AS Nome_do_Estudante,
universidade.nome AS Nome_da_Universidade,
universidade.rua AS Rua_da_Universidade
FROM estudante 
INNER JOIN
Universidade ON estudante.id_uni = Universidade.id_uni;
           
select * from vw_estudante_uni;

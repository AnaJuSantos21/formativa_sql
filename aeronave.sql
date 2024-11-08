create database aeronave;
use aeronave;

create table aeronave (
id_nave integer primary key auto_increment,
nome varchar(200) not null,
comunicador varchar(200),
destino varchar(200)
);

create table passageiro (
id_pass integer primary key auto_increment,
id_nave int,
nome varchar(200) not null,
telefone varchar(200),
endereço varchar(200),
foreign key (id_nave) references aeronave(id_nave)
);

insert into aeronave (nome, comunicador, destino) values
('amarelinho', 'A', 'Santos'),
('azulzinho', 'B', 'Rio de Janeiro'),
('vermelhinho', 'C', 'Europa'),
('verdinho', 'D', 'Suiça'),
('roxinho', 'E', 'Canadá');

insert into passageiro (nome, telefone, endereço, id_nave) values
('Michel', '123456789', 'Rua A', 1),
('Ana', '987654321', 'Rua B', 2),
('Jonas', '918273645', 'Rua C', 3),
('Dylan', '564738291', 'Rua D', 4),
('Matilda', '192837465', 'Rua E', 5);

select * from aeronave;
select * from passageiro;
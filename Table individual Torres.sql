create database valerin;
use valerin;

create table fornecedores (
idfornecedor int primary key auto_increment,
nome varchar(40),
cnpj varchar(40),
tomate varchar(30)
);
select * from fornecedores;

insert into fornecedores (nome, cnpj, tomate) values
('mallmann', '12.345.678/0002-00', 'Tomate caqui'),
('happy tomato', '12.345.675/0001-00', 'Tomate carmem'),
('biazzonne', '12.321.685/0003-00', 'Tomate Débora'),
('trebeschi tomatoes', '12.833.668/0004-00', 'Tomate italiano'),
('gourmet tomatoes','12.999.128/0005-00', 'Tomate cereja' ),
('agro tomates', '12.365.548/0006-00', 'Tomate sweet grapes'),
('bunge alimentos', '12.472.833/0007-00', 'Tomate coração de boi'),
('amaggi', '12.666.753/0008-00', 'Tomate Chucha'),
('isla sementes','12.333.294/0009-00', 'Tomate Rama'),
('plantpar', '12.129.758/0010-00', 'Tomate pera'); 


alter table fornecedores add column estado varchar(30);
update fornecedores set estado = 'sao paulo'
where idfornecedor = 1;

delete from fornecedores where id = 8;


select * from fornecedores where estado like '%s';
select * from fornecedores where nome = 'mallmann';
select * from fornecedores where nome != 'mallmann';
select * from fornecedores where tomate = 'Tomate carmem';

truncate table fornecedores;
 
 
 create table cadastro (
idCadastro int primary key auto_increment,
nome varchar(50),
email varchar(80),
cpf varchar(20),
idade varchar (10),
dtNasc date,
senha varchar(20)
);

insert into cadastro (nome, email, cpf, idade, dtNasc, senha) values
('jose','jose@gmail.com','1234678910-1','30','1999-01-10','hayb2'),
('eduardo','eduardo@gmail.com','1234478911-4','38','1988-02-08','h6bn3'),
('thiago','thiago@gmail.com','1234478666-6','20','2000-03-10', 'bbsui234'),
('elly','elly@gmail.com','1234445670-1','40','1980-09-08', 'ndbao34'),
('joao','joao@gmail.com','4552994949-9','50','1963-08-24', 'ybn2ui1p'),
('duarte','duarte@gmail.com','6552333949-9','40','1970-04-24', '83njnx'),
('levi','levi@gmail.com','4533333949-9','50','1983-10-24','pato123'),
('iza','iza@gmail.com','4556666949-9','50','1993-08-14','nma1'),
('ana','ana@gmail.com','2536566349-9','40','1973-06-08','nmagsqo3'),
('torres','torres@gmail.com','4546566347-8','20','2003-07-09','oind42');


create table registroSensor (
idregistroSensor int primary key auto_increment,
temperatura varchar(10),
datTemperatura date,
statusSensor varchar(40)
);

insert into registroSensor (temperatura, datTemperatura, statusSensor) values
('25°c','2023-02-02','ativo'),
('20°c','2023-01-01','desativado'),
('19°c','2023-08-08','ativo'),
('29°c','2023-09-08','desativado'),
('30°c','2023-06-07','ativo'),
('10°c','2023-07-06','desativado'),
('08°c','2023-05-04','ativo'),
('09°c','2023-04-05','desativado'),
('05°c','2023-03-02','ativo'),
('13°c','2023-02-03','desativado');


create table sensor(
idSensor int primary key auto_increment,
marcaSensor Varchar(50),
sensor varchar(50),
preço varchar(40),
qtdSensor varchar(40)
);

insert into sensor(marcaSensor, sensor, preço, qtdSensor) values
('ml35','temperatura', 20, 10),
('ml35','temperatura', 20, 20),
('ml35','temperatura', 20, 30),
('ml35','temperatura', 20, 40),
('ml35','temperatura', 20, 50),
('ml35','temperatura', 20, 60),
('ml35','temperatura', 20,70),
('ml35','temperatura', 20, 80),
('ml35','temperatura', 20, 90),
('ml35','temperatura', 20, 100);


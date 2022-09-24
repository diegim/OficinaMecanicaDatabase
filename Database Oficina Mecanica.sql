CREATE DATABASE Oficina;
use Oficina;

CREATE TABLE cliente(
	IDcliente int not null auto_increment primary key,
    Nome varchar(45),
    Endereço varchar(45),
    Telefone varchar(15),
    CPF varchar (11),
    constraint CPFisUnique unique (CPF)
    );
    
CREATE TABLE veiculo(
	IDveículo int not null auto_increment primary key,
    Modelo varchar(45),
    Ano varchar(4),
    Placa varchar(10),
    NomeClienteVeic varchar(45),
    IDclienteVeiculo int not null,
    constraint PlacaIsUnique unique (Placa),
    constraint IDdoClientEmVeiculo foreign key (IDclienteVeiculo) references cliente(IDcliente)
   );
   
 CREATE TABLE mecanicos(
	IDmecanico int not null auto_increment primary key,
    NomeMecanico varchar(45),
    EndereçoMecanico varchar(60),
    Especialidade varchar(30)
    );
    
CREATE TABLE servico(
	IDserviço int not null auto_increment primary key,
    DescricaoServico varchar(90),
    ValorServico float
    );
    
CREATE TABLE pecas(
	IDpeca int not null auto_increment primary key,
    NomedaPeca varchar(60),
    ValordaPeca float
    );
    
CREATE TABLE ordemdeservico(
	IDordem int not null auto_increment primary key,
    DataEmissao DATE,
    StatusDaOrdem enum('Em aberto','Concluido'),
    DataConclusao DATE,
    ValorTotal float
    );
    

    
    
    
    
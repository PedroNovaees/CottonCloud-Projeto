create database pialgodao;
use pialgodao;

CREATE TABLE produtor (-- tabela que armazenara os dados do produtor de algodão
    idlogin INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    senha VARCHAR(60) NOT NULL,
    cpf CHAR(11),
    cnpj CHAR(14),
    rne CHAR(8)
);

DESC produtor;

-- dados do usuario que fara uso da aplicação (funcionario do produtor)
CREATE TABLE usuario (            
    idlogin INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    senha VARCHAR(60) NOT NULL,
    nivel_de_acesso VARCHAR(30) not null,
    constraint chkacesso check (nivel_de_acesso in ('acesso total','acesso moderado','visualizador'))
);

-- dados capturados pelo sensor do arduino 
create table sensor (
	idsensor int primary key auto_increment,
    temperatura decimal(8,2),
	umidade float,
    estadoumidade varchar(60),
    estadotemperatura varchar(10),
    CONSTRAINT chkEstadotemperatura
    CHECK (estadotemperatura IN ('BOM', 'RUIM')),
    CONSTRAINT chkEstadoUmidade
    CHECK (estadoUmidade IN ('BOM', 'RUIM'))
);
    
-- tabela responsavel por armazenar os dados da fazenda
create table fazenda(
	idfazenda int primary key auto_increment,
	endereco varchar(50) not null,
	cep char(7) not null,
	equitares float not null ,
	qntsensor int not null
);

desc sensor;
    
insert into produtor values(
default,'Roberto santos','roberto112@gmail.com','5544466633','48291837483',null,null),
(default,'Jose Denilsnon','Jose222@gmail.com','José1223334','04692117095',null,null),
(default,'Amilton antines','amiltonss1223@gmail.com','angelica1234','02792832029',null,null),
(default,'Omar silva','omarsilva142@gmail.com','omar12/3','27130118091',null,null),
(default,'Luis Carlos','luis112@gmail.com','0Ly^71','51170006094',null,null),
(default,'Antonio cesar','cezar445@gmail.com','C11*h5','40635462095',null,null),
(default,'Bartolomeu andreias','bartolomeu112@gmail.com','56*Eu0','00431435049',null,null);
  
  select* from produtor;
  
  
  
    
    insert into fazenda values(
default,'rua turquia','049549',4,'4'),
(default,'palminopólis','2748557',5,6),
(default,'Rio Claro','2767857',8,7),
(default,'peruibe','5747657',5,6),
(default,'paranapiacaba','2744447',5,6),
(default,'Parnaiba','4448557',5,6),
(default,'Xique Xique','1234567',3,7);



	insert into sensor values (
    default,16,60,'BOM','BOM'),
    (default,33,70,'RUIM','BOM'),
    (default,20,82,'BOM','RUIM'),
    (default,17,50,'BOM','BOM'),
    (default,25,82,'RUIM','RUIM'),
    (default,17,86,'BOM','RUIM');
    
insert into usuario values(
default,'josimar','josimar112@gmail.com','abacaxi123','acesso moderado'),
(default,'Willian','wilian112@gmail.com','melso123','acesso total'),
(default,'Antonio','Antonio112@gmail.com','12345678','visualizador'),
(default,'Arthur','arthur555@gmail.com','batatinha123','acesso moderado'),
(default,'wellington','well55112@gmail.com','766776123','acesso total'),
(default,'Caue','caue11332@gmail.com','7885775557','visualizador');



select * from produtor;

select * from sensor;

select * from fazenda;

select * from usuario;


SELECT concat(nome, email) FROM produtor;
SELECT concat(nome, ' ', email) FROM produtor;
SELECT concat('O produtor ', nome, ' que possui o email ', email) 
	FROM produtor;
    
    
    
SELECT concat(nome, email) FROM usuario;
SELECT concat(nome, ' ', email) FROM produtor;
SELECT concat('O usuario  ', nome, ' possui o nivel de acesso :', nivel_de_acesso) 
	FROM usuario;
    
    
    
    
    

   




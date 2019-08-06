CREATE DATABASE T_Gufos

USE T_Gufos

CREATE TABLE Categorias(
	IdCategoria			INT PRIMARY KEY IDENTITY NOT NULL
	,Nome				VARCHAR(255) not null unique 
);

create table Eventos(
	IdEvento int identity primary key not null
	,Titulo varchar(255) not null
	,Descricao text
	,DataEvento datetime not null
	,Ativo bit not null default(1)
	,Localizacao varchar(255) null
	,IdCategoria int foreign key references Categorias(IdCategoria)
);

create table Usuarios(
	IdUsuario int identity primary key not null
	,Nome varchar(255) not null
	,Email varchar(255) not null unique
	,Senha varchar(255) not null 
	,Permissao varchar(255) not null 
);

create table Presencas(
	IdUsuario int foreign key references Usuarios(IdUsuario)
	,IdEvento int foreign key references Eventos(IdEvento)
);
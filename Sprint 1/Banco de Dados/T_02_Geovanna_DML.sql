--T_02_SeuNome_DML.sql

use T_Gufos

insert into Usuarios(Nome, Email, Senha, Permissao) 
values ('Clayton','c.y@mail.com','123456','ADMINISTRADOR')


insert into Usuarios(Nome, Email, Senha, Permissao) 
values ('Rayssa','rayssa@gmail.com','r123456','ALUNO')

SELECT * from Usuarios;

insert into Categorias(Nome)
values ('Jogos') , ('Meetup') ,('Futebol');

select * from Categorias order by IdCategoria asc;

insert into Eventos(Titulo, Descricao, DataEvento, Ativo, Localizacao, IdCategoria)
values ('Campeonato de Ping-pong' , 'Campeonato entre turmas de tec. de redes e dev' , GETDATE(), 1, 'Alameda Barão de Limeira, 539' ,1);


insert into Eventos(Titulo, Descricao, DataEvento ,Localizacao, IdCategoria)
values ('Meetup' ,'BD Relacionais'
		, '2019-08-06T18:00:00'
		,'Alameda Barão de Limeira, 539'
		,2);

insert into Eventos(Titulo, Descricao, DataEvento ,Localizacao, IdCategoria)
values ('futebol no terraço' , 'Do Nucleo Desenvolvimento Senai'
		,'2019-08-06T18:00:00'
		,'Alameda Barão de Limeira, 539'
		,2);

select *from Eventos;

insert into Presencas(IdEvento,IdUsuario) values (1,2),(1,1),(2,2)
select * from Presencas

select * from Categorias;

update Eventos set IdCategoria = 3 where IdEvento = 3

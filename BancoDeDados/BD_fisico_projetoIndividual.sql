create database exercito;
use exercito;

create table voto(
idVoto int primary key,
nome varchar (45)
);
insert into voto ()
values (1,'Escolta'),
(2,'Choque'),
(3,'Comunicação');

select * from voto;

create table usuario(
idusuario int primary key auto_increment,
nome varchar(45),
email varchar(50),
senha varchar(50),
fkvoto int,
constraint fkvoto foreign key(fkvoto) references  voto(idVoto)
);
update usuario set fkvoto = 3 where idusuario = 2;
select * from usuario;


SELECT v.nome , count(fkVoto) as 'voto_recebido' FROM usuario join voto as v on idVoto = fkVoto group by v.nome;

SELECT vo.id, vo.nome, u.nome, u.fkvoto
        FROM voto as vo
            INNER JOIN usuario as u
                ON u.fkvoto = vo.idVoto;
                
SELECT  count(u.idUsuario) as 'qtde_comentarios', u.idUsuario, u.nome
        FROM comentario as c
            INNER JOIN usuario as u
                ON c.fk_usuario = u.idUsuario group by u.idUsuario;

insert into usuario (nome,fkvoto) 
values('teste', 1),
('teste', 2),
('teste', 1),
('teste', 2),
('teste', 3),
('teste', 3),
('teste', 2),
('teste', 1),
('teste', 3),
('teste', 2);

insert into usuario (nome,fkVoto) values 
('teste', 1),
('teste', 1),
('teste', 1),
('teste', 1),
('teste', 1),
('teste', 1),
('teste', 1),
('teste', 1),
('teste', 3);

drop table if exists impiegato cascade;

create table impiegato(
id_imp int auto_increment,
nome varchar(30) not null,
cognome varchar(30) not null,
stipendio numeric(7,2) not null,
reparto varchar(50) not null,
constraint p_idimp primary key(id_imp)
);
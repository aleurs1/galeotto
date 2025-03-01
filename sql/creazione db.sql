drop database if exists biblioteca;
create database biblioteca;
use biblioteca;


create table utenti(
    id serial,
    nome varchar(30) not null,
    cognome varchar(30) not null,
    fotoProfilo varchar(100) not null,
    primary key(id)
) engine=innodb;

create table libri(
    id serial,
    titolo varchar(100) not null,
    eBook boolean not null,
    film boolean not null,
    urlCopertina varchar(100),
    sinossi varchar(50),
    primary key(id)    
) engine=innodb;

create table paroleChiavi(
    id serial,
    parola varchar(20),
    primary key(id)
) engine=innodb;

create table libriConParoleChiave(
    id serial,
    idLibro bigint unsigned not null,
    idParolaChiave bigint unsigned not null,
    primary key(id),
    foreign key (idLibro) references libri(id)
        on update cascade
        on delete cascade,
    foreign key (idParolaChiave) references paroleChiavi(id)
        on update cascade
        on delete cascade
) engine=innodb;

create table commenti(
    id serial,
    data date not null,
    stelline int,
    testo varchar(500),
    idUtente bigint unsigned not null,
    idLibro bigint unsigned not null,
    primary key(id),
    foreign key(idUtente) references utenti(id)
        on delete cascade
        on update cascade,
    foreign key(idLibro) references libri(id)
        on delete cascade
        on update cascade
) engine=innodb;

create table autori(
    id serial,
    nominativo varchar(100) not null,    
    primary key(id)
) engine=innodb;

create table libriConAutori(
    id serial,
    idLibro bigint unsigned not null,
    idAutore bigint unsigned not null,
    primary key(id),
    foreign key (idLibro) references libri(id)
        on delete cascade
        on update cascade,
    foreign key(idAutore) references autori(id)
        on delete cascade
        on update cascade
) engine=innodb;
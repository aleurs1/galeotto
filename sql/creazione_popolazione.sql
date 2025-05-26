drop database if exists galeotto;
create database galeotto;
use galeotto;

create table GAL_utenti(
    id serial,
    nome varchar(30) not null,
    cognome varchar(30) not null,
    fotoProfilo varchar(100) not null,
    primary key(id)
) engine=innodb;

create table GAL_libri(
    id serial,
    titolo varchar(100) not null,
    mlol boolean not null,
    film boolean not null,
    urlCopertina varchar(100),
    sinossi varchar(5500),
    primary key(id)    
) engine=innodb;

create table GAL_paroleChiave(
    id serial,
    parola varchar(50),
    primary key(id)
) engine=innodb;

create table GAL_libriConParoleChiave(
    id serial,
    idLibro bigint unsigned not null,
    idParolaChiave bigint unsigned not null,
    primary key(id),
    foreign key (idLibro) references GAL_libri(id)
        on update cascade
        on delete cascade,
    foreign key (idParolaChiave) references GAL_paroleChiave(id)
        on update cascade
        on delete cascade
) engine=innodb;

create table GAL_commenti(
    id serial,
    data date not null,
    stelline int,
    testo varchar(5500),
    idUtente bigint unsigned not null,
    idLibro bigint unsigned not null,
    primary key(id),
    foreign key(idUtente) references GAL_utenti(id)
        on delete cascade
        on update cascade,
    foreign key(idLibro) references GAL_libri(id)
        on delete cascade
        on update cascade
) engine=innodb;

create table GAL_autori(
    id serial,
    nominativo varchar(100) not null,    
    primary key(id)
) engine=innodb;

create table GAL_libriConAutori(
    id serial,
    idLibro bigint unsigned not null,
    idAutore bigint unsigned not null,
    primary key(id),
    foreign key (idLibro) references GAL_libri(id)
        on delete cascade
        on update cascade,
    foreign key(idAutore) references GAL_autori(id)
        on delete cascade
        on update cascade
) engine=innodb;




-- svuoto tutte le tabelle
delete from GAL_autori;
delete from GAL_commenti;
delete from GAL_libri;
delete from GAL_libriConAutori;
delete from GAL_libriConParoleChiave;
delete from GAL_paroleChiave;
delete from GAL_utenti;

-- Inserimento autori
INSERT INTO GAL_autori (id, nominativo) VALUES (1, 'Zita Dazzi');
INSERT INTO GAL_autori (id, nominativo) VALUES (2, 'Kerstin Gier');
INSERT INTO GAL_autori (id, nominativo) VALUES (3, 'Luca Azzolini');
INSERT INTO GAL_autori (id, nominativo) VALUES (4, 'Scott Westerfeld');
INSERT INTO GAL_autori (id, nominativo) VALUES (5, 'Marie-Aude Murail');
INSERT INTO GAL_autori (id, nominativo) VALUES (6, 'Catherine Forde');
INSERT INTO GAL_autori (id, nominativo) VALUES (7, 'Ruiz Zafon Carlos');
INSERT INTO GAL_autori (id, nominativo) VALUES (8, 'Marion Zimmer Bradley');
INSERT INTO GAL_autori (id, nominativo) VALUES (9, 'Daniele Mencarelli');
INSERT INTO GAL_autori (id, nominativo) VALUES (10, 'Jonathan Coe');
INSERT INTO GAL_autori (id, nominativo) VALUES (11, 'Scianna Giorgio');
INSERT INTO GAL_autori (id, nominativo) VALUES (12, 'Sharon M. Draper');
INSERT INTO GAL_autori (id, nominativo) VALUES (13, 'Neil Gaiman');
INSERT INTO GAL_autori (id, nominativo) VALUES (14, 'Ferrara Antonio');
INSERT INTO GAL_autori (id, nominativo) VALUES (15, 'Facchini Giuliana');
INSERT INTO GAL_autori (id, nominativo) VALUES (16, 'Krystyna Kuhn');
INSERT INTO GAL_autori (id, nominativo) VALUES (17, 'Nanetti Angela');
INSERT INTO GAL_autori (id, nominativo) VALUES (18, 'Heurtier Annelise');
INSERT INTO GAL_autori (id, nominativo) VALUES (19, 'Sénéchal Jean Francois');
INSERT INTO GAL_autori (id, nominativo) VALUES (20, 'Kazumi Yumoto');
INSERT INTO GAL_autori (id, nominativo) VALUES (21, 'Roth Veronica');
INSERT INTO GAL_autori (id, nominativo) VALUES (22, 'Strasser Todd');
INSERT INTO GAL_autori (id, nominativo) VALUES (23, 'Maraini Dacia');
INSERT INTO GAL_autori (id, nominativo) VALUES (24, 'Delogu Andrea');
INSERT INTO GAL_autori (id, nominativo) VALUES (25, 'Benni Stefano');
INSERT INTO GAL_autori (id, nominativo) VALUES (26, 'Flagg Fannie');
INSERT INTO GAL_autori (id, nominativo) VALUES (27, 'Harris Robert');
INSERT INTO GAL_autori (id, nominativo) VALUES (28, 'Murakami Haruki');
INSERT INTO GAL_autori (id, nominativo) VALUES (29, 'Boyne John');
INSERT INTO GAL_autori (id, nominativo) VALUES (30, 'Glaeser Mechthild');
INSERT INTO GAL_autori (id, nominativo) VALUES (31, 'Carey Anna');
INSERT INTO GAL_autori (id, nominativo) VALUES (32, 'Ohlsson Kristina');
INSERT INTO GAL_autori (id, nominativo) VALUES (33, 'Dalcher Christina');
INSERT INTO GAL_autori (id, nominativo) VALUES (34, 'Stroud Jonathan');
INSERT INTO GAL_autori (id, nominativo) VALUES (35, 'Gazzola Alessia');
INSERT INTO GAL_autori (id, nominativo) VALUES (36, 'King Stephen');
INSERT INTO GAL_autori (id, nominativo) VALUES (37, 'Lévy Bertherat Déborah');
INSERT INTO GAL_autori (id, nominativo) VALUES (38, 'Cook Trish');
INSERT INTO GAL_autori (id, nominativo) VALUES (39, 'Merenda Adriana');
INSERT INTO GAL_autori (id, nominativo) VALUES (40, 'Lowry Lois');
INSERT INTO GAL_autori (id, nominativo) VALUES (41, 'Hardinge Frances');
INSERT INTO GAL_autori (id, nominativo) VALUES (42, 'Cenciarelli Gaja');
INSERT INTO GAL_autori (id, nominativo) VALUES (43, 'Paulsen Gary');
INSERT INTO GAL_autori (id, nominativo) VALUES (44, 'Kitson Mick');
INSERT INTO GAL_autori (id, nominativo) VALUES (45, 'Beauvais Clémentine');
INSERT INTO GAL_autori (id, nominativo) VALUES (46, 'Brooks Geraldine');
INSERT INTO GAL_autori (id, nominativo) VALUES (47, 'Brooks Kevin');
INSERT INTO GAL_autori (id, nominativo) VALUES (48, 'Shirley Jackson');
INSERT INTO GAL_autori (id, nominativo) VALUES (49, 'Di Pietrantonio Donatella');
INSERT INTO GAL_autori (id, nominativo) VALUES (50, 'Danforth Emily');
INSERT INTO GAL_autori (id, nominativo) VALUES (51, 'Dawson Juno');
INSERT INTO GAL_autori (id, nominativo) VALUES (52, 'Donnelly Jennifer');
INSERT INTO GAL_autori (id, nominativo) VALUES (53, 'Halse Anderson Laurie');
INSERT INTO GAL_autori (id, nominativo) VALUES (54, 'Hamilton Alwyn');
INSERT INTO GAL_autori (id, nominativo) VALUES (55, 'Manzini Antonio');
INSERT INTO GAL_autori (id, nominativo) VALUES (56, 'Sveistrup Soren');
INSERT INTO GAL_autori (id, nominativo) VALUES (57, 'Harris Robert');

insert into GAL_autori (id, nominativo) values (162, 'Malaguti Paolo');
insert into GAL_autori (id, nominativo) values (163, 'Molesini Andrea');

INSERT INTO GAL_autori (id, nominativo) VALUES (58, 'Recami Francesco');
INSERT INTO GAL_autori (id, nominativo) VALUES (59, 'Marone Lorenzo');
INSERT INTO GAL_autori (id, nominativo) VALUES (60, 'Forster Edward Morgan');
INSERT INTO GAL_autori (id, nominativo) VALUES (61, 'Owens Delia');
INSERT INTO GAL_autori (id, nominativo) VALUES (62, 'Lansdale Joe R.');
INSERT INTO GAL_autori (id, nominativo) VALUES (63, 'Mazzucco Melania');
INSERT INTO GAL_autori (id, nominativo) VALUES (64, 'Strada Annalisa');
INSERT INTO GAL_autori (id, nominativo) VALUES (65, 'Arslan Antonia');
INSERT INTO GAL_autori (id, nominativo) VALUES (66, 'Matheson Richard');
INSERT INTO GAL_autori (id, nominativo) VALUES (67, 'Bussi Michel');
INSERT INTO GAL_autori (id, nominativo) VALUES (68, 'Honeyman Gail');
INSERT INTO GAL_autori (id, nominativo) VALUES (69, 'Mitchell David');
INSERT INTO GAL_autori (id, nominativo) VALUES (70, 'Dowd Sioban');
INSERT INTO GAL_autori (id, nominativo) VALUES (71, 'See Lisa');
INSERT INTO GAL_autori (id, nominativo) VALUES (72, 'Romagnolo Raffaella');
INSERT INTO GAL_autori (id, nominativo) VALUES (73, 'Lothar Ernst');
INSERT INTO GAL_autori (id, nominativo) VALUES (74, 'Quinn Kate');
INSERT INTO GAL_autori (id, nominativo) VALUES (75, 'Kerr Philip');
INSERT INTO GAL_autori (id, nominativo) VALUES (76, 'Laurent Caroline');
INSERT INTO GAL_autori (id, nominativo) VALUES (77, 'Agnello Hornby Simonetta');
INSERT INTO GAL_autori (id, nominativo) VALUES (78, 'Pederiali Giuseppe');
INSERT INTO GAL_autori (id, nominativo) VALUES (79, 'Stockett Kathryne');
INSERT INTO GAL_autori (id, nominativo) VALUES (80, 'Miller Madeline');
INSERT INTO GAL_autori (id, nominativo) VALUES (81, 'Ishiguro Kazuo');
INSERT INTO GAL_autori (id, nominativo) VALUES (82, 'Lehane Dennis');
INSERT INTO GAL_autori (id, nominativo) VALUES (83, 'Weisgarber Ann');
INSERT INTO GAL_autori (id, nominativo) VALUES (84, 'Backer Jo');
INSERT INTO GAL_autori (id, nominativo) VALUES (85, 'Rees Celia');
INSERT INTO GAL_autori (id, nominativo) VALUES (86, 'Levi Lia');
INSERT INTO GAL_autori (id, nominativo) VALUES (87, 'Dowswell Paul');
INSERT INTO GAL_autori (id, nominativo) VALUES (88, 'Comastri Montanari Danila');
INSERT INTO GAL_autori (id, nominativo) VALUES (89, 'Percivale Tommaso');
INSERT INTO GAL_autori (id, nominativo) VALUES (90, 'Balzano Marco');
INSERT INTO GAL_autori (id, nominativo) VALUES (91, 'Chrichton Michael');
INSERT INTO GAL_autori (id, nominativo) VALUES (92, 'Doody Margareth');
INSERT INTO GAL_autori (id, nominativo) VALUES (93, 'Meyer Stephenie');
INSERT INTO GAL_autori (id, nominativo) VALUES (94, 'Paolini Christopher');
INSERT INTO GAL_autori (id, nominativo) VALUES (95, 'McDowell Michael');
INSERT INTO GAL_autori (id, nominativo) VALUES (96, 'Almond David');
INSERT INTO GAL_autori (id, nominativo) VALUES (97, 'Magnoli Sara');
INSERT INTO GAL_autori (id, nominativo) VALUES (98, 'Arnold David');
INSERT INTO GAL_autori (id, nominativo) VALUES (99, 'Blundell Judy');
INSERT INTO GAL_autori (id, nominativo) VALUES (100, 'Green John');
INSERT INTO GAL_autori (id, nominativo) VALUES (101, 'Sutcliff Rosemary');
INSERT INTO GAL_autori (id, nominativo) VALUES (102, 'Fante John');

-- insert into GAL_autori (id, nominativo) values (164, 'Strada Annalisa'); -> 64

INSERT INTO GAL_autori (id, nominativo) VALUES (103, 'LeGuin Ursula');
INSERT INTO GAL_autori (id, nominativo) VALUES (104, 'Grant Cynthia D.');
INSERT INTO GAL_autori (id, nominativo) VALUES (105, 'Vesper Inga');
INSERT INTO GAL_autori (id, nominativo) VALUES (106, 'Gardner Sally');
INSERT INTO GAL_autori (id, nominativo) VALUES (107, 'Bowler Tim');
INSERT INTO GAL_autori (id, nominativo) VALUES (108, 'Bardugo Leigh');
INSERT INTO GAL_autori (id, nominativo) VALUES (109, 'Antonini Christian');
INSERT INTO GAL_autori (id, nominativo) VALUES (110, 'Vermot Thibault');
INSERT INTO GAL_autori (id, nominativo) VALUES (111, 'Efionayi Sabrina');
INSERT INTO GAL_autori (id, nominativo) VALUES (112, 'Stratton Alan');
INSERT INTO GAL_autori (id, nominativo) VALUES (113, 'Rowell Rainbow');
INSERT INTO GAL_autori (id, nominativo) VALUES (114, 'Anderson Jodi Lynn');
INSERT INTO GAL_autori (id, nominativo) VALUES (115, 'Walpole Horace');
INSERT INTO GAL_autori (id, nominativo) VALUES (116, 'Dabos Christelle');
INSERT INTO GAL_autori (id, nominativo) VALUES (117, 'Lore Pitta');
INSERT INTO GAL_autori (id, nominativo) VALUES (118, 'Levithan David');
INSERT INTO GAL_autori (id, nominativo) VALUES (119, 'O’Neill Louise');

insert into GAL_autori (id, nominativo) values (165, 'Alderman Naomi');

INSERT INTO GAL_autori (id, nominativo) VALUES (120, 'Wizner Jake');
INSERT INTO GAL_autori (id, nominativo) VALUES (121, 'McLain Paula');
INSERT INTO GAL_autori (id, nominativo) VALUES (122, 'McCann Colum');
INSERT INTO GAL_autori (id, nominativo) VALUES (123, 'Gold Robert');
INSERT INTO GAL_autori (id, nominativo) VALUES (124, 'Davidson Lionel');
INSERT INTO GAL_autori (id, nominativo) VALUES (125, 'Burgess Melvin');
INSERT INTO GAL_autori (id, nominativo) VALUES (126, 'Lucarelli Carlo');
INSERT INTO GAL_autori (id, nominativo) VALUES (127, 'Chambers Aidan');
INSERT INTO GAL_autori (id, nominativo) VALUES (128, 'Sgardoli Guido');
INSERT INTO GAL_autori (id, nominativo) VALUES (129, 'Hearn Lian');
INSERT INTO GAL_autori (id, nominativo) VALUES (130, 'Camerini Valentina');
INSERT INTO GAL_autori (id, nominativo) VALUES (131, 'Baker Chandler');
INSERT INTO GAL_autori (id, nominativo) VALUES (132, 'Slater Kim');
INSERT INTO GAL_autori (id, nominativo) VALUES (133, 'Gaiman Neil');

insert into GAL_autori (id, nominativo) values (166, 'Vick Christipher');

INSERT INTO GAL_autori (id, nominativo) VALUES (134, 'Dugan Jennifer');
INSERT INTO GAL_autori (id, nominativo) VALUES (135, 'Asher Jay');
INSERT INTO GAL_autori (id, nominativo) VALUES (136, 'Creech Sharon');
INSERT INTO GAL_autori (id, nominativo) VALUES (137, 'Le Guin Ursula K.');

-- insert into GAL_autori (id, nominativo) values (167, 'Ohlsson Kristina'); -> 32

INSERT INTO GAL_autori (id, nominativo) VALUES (138, 'Le Fanu Joseph Sheridan');

-- insert into GAL_autori (id, nominativo) values (168, 'Scianna Giorgio'); -> 11

INSERT INTO GAL_autori (id, nominativo) VALUES (139, 'Dazzi Zita');
INSERT INTO GAL_autori (id, nominativo) VALUES (140, 'Oggero Margherita');
INSERT INTO GAL_autori (id, nominativo) VALUES (141, 'Wang Jen');
INSERT INTO GAL_autori (id, nominativo) VALUES (142, 'Anna Cercignano');
INSERT INTO GAL_autori (id, nominativo) VALUES (143, 'Carroll Emily'); -- più l'autore 53
INSERT INTO GAL_autori (id, nominativo) VALUES (144, 'Sam Maggs');		-- più 171 e 172

insert into GAL_autori (id, nominativo) values (171, 'Gabi Nam');
insert into GAL_autori (id, nominativo) values (172, 'Rainbow Rowell');

INSERT INTO GAL_autori (id, nominativo) VALUES (145, 'Kevin Panetta'); -- più 173
insert into GAL_autori (id, nominativo) values (173, 'Savannah Ganucheau');

INSERT INTO GAL_autori (id, nominativo) VALUES (146, 'Benjamin Von Eckartsberg'); -- più 174

insert into GAL_autori (id, nominativo) values (174, 'Chaiko');

INSERT INTO GAL_autori (id, nominativo) VALUES (147, 'Takashi Murakami');
INSERT INTO GAL_autori (id, nominativo) VALUES (148, 'Roy Yvon');
INSERT INTO GAL_autori (id, nominativo) VALUES (149, 'Galli Christian');
INSERT INTO GAL_autori (id, nominativo) VALUES (150, 'Taniguchi Jiro');
INSERT INTO GAL_autori (id, nominativo) VALUES (151, 'Pesce Mariapaola');
INSERT INTO GAL_autori (id, nominativo) VALUES (152, 'Billet Julia');
INSERT INTO GAL_autori (id, nominativo) VALUES (153, 'Emilie Plateau');
INSERT INTO GAL_autori (id, nominativo) VALUES (154, 'Rossi Sergio');
INSERT INTO GAL_autori (id, nominativo) VALUES (155, 'Radice Teresa');
INSERT INTO GAL_autori (id, nominativo) VALUES (156, 'Crilley Mark');
INSERT INTO GAL_autori (id, nominativo) VALUES (157, 'Fordham Fred');
INSERT INTO GAL_autori (id, nominativo) VALUES (158, 'Knox Ostertag Molly');
INSERT INTO GAL_autori (id, nominativo) VALUES (159, 'Irène Nemirovsky');
INSERT INTO GAL_autori (id, nominativo) VALUES (160, 'Falcones Ildefonso');
INSERT INTO GAL_autori (id, nominativo) VALUES (161, 'Carrisi Donato');

insert into GAL_autori (id, nominativo) values (169, 'Honeyman Gail');


INSERT INTO GAL_autori (id, nominativo) VALUES (176, 'Geda Fabio');

insert into GAL_autori (id, nominativo) values (175, 'Molesini Andrea'); -- 83
insert into GAL_autori (id, nominativo) values (177, 'Vick Christipher'); -- 161
insert into GAL_autori (id, nominativo) values (178, 'Akbari Enaiatollah');



-- Inserimento parole chiave
INSERT INTO GAL_paroleChiave (id, parola) VALUES (1, 'AMORE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (2, 'BULLISMO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (3, 'EMIGRAZIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (4, 'DIFFERENZE SOCIALI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (5, 'SEPARAZIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (6, 'CRESCITA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (7, 'FANTASY');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (8, 'LUTTO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (9, 'INADEGUATEZZA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (10, 'CONFRONTO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (11, 'PRIMI AMORI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (12, 'DISTOPIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (13, 'AVVENTURA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (14, 'GUERRA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (15, 'EVOLUZIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (16, 'TECNOLOGIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (17, 'AMICIZIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (18, 'ASPIRAZIONI PERSONALI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (19, 'CONFRONTO FAMILIARE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (20, 'DIVERSITÀ');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (21, 'MORTE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (22, 'AFFIDO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (23, 'LEGAMI FAMILIARI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (24, 'POSITIVITÀ');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (25, 'MISTERO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (26, 'INVESTIGAZIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (27, 'MALATTIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (28, 'APPARIZIONI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (29, 'FANTASCIENZA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (30, 'MAGIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (31, 'AMBIENTAZIONE MEDIEVALE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (32, 'FAMIGLIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (33, 'REALTÀ E ILLUSIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (34, 'SOGNI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (35, 'GRUPPI ARMATI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (36, 'FEDELTÀ');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (37, 'SCELTE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (38, 'RAPPORTI TRA FRATELLI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (39, 'RESPONSABILITÀ');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (40, 'ADOLESCENZA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (41, 'DISABILITÀ');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (42, 'INCLUSIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (43, 'STEREOTIPI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (44, 'FORZA DI VOLONTÀ');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (45, 'RICERCA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (46, 'MISTERI SVELATI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (47, 'ASSASSINIO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (48, 'CIMITERO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (49, 'COSCIENZA DI SE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (50, 'CAPACITÀ PERSONALI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (51, 'ABBANDONO SCOLASTICO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (52, 'LETTURA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (53, 'VOLONTARIATO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (54, 'VIOLENZA DOMESTICA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (55, 'RISPETTO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (56, 'ACCOGLIENZA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (57, 'INVIDIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (58, 'SPARIZIONI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (59, 'PAURA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (60, 'RAPPORTI FAMILIARI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (61, 'PRIMO AMORE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (62, 'CONFLITTI FAMILIARI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (63, 'INDIPENDENZA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (64, 'GELOSIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (65, 'FEMMINISMO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (66, 'EMANCIPAZIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (67, 'CORSA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (68, 'ASPIRAZIONI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (69, 'FUTURO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (70, 'STORIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (71, 'SEGREGAZIONISMO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (72, 'MOVIMENTI RAZZIALI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (73, 'DISEGUAGLIANZE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (74, 'RELAZIONI UMANE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (75, 'AUTONOMIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (76, 'GIOVANI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (77, 'ANZIANI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (78, 'RAPPORTI UMANI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (79, 'PRIGIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (80, 'VENDETTA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (81, 'EPURAZIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (82, 'PASSATO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (83, 'DISILLUSIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (84, 'ESPERIMENTO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (85, 'MOVIMENTI ESTREMI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (86, 'COINVOLGIMENTO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (87, 'ADOLESCENTI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (88, 'CONDIZIONE FEMMINILE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (89, 'VIOLENZA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (90, 'STORIA ITALIANA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (91, 'DROGA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (92, 'COMUNITÀ');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (93, 'REGOLE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (94, 'OMICIDIO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (95, 'METAFORA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (96, 'MONDO FANTASTICO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (97, 'ORFANATROFIO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (98, 'CAMPIONATO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (99, 'INSEGUIMENTO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (100, 'AMICIZIA FEMMINILE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (101, 'DETERMINAZIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (102, 'NAZISMO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (103, 'DIPLOMAZIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (104, 'SPIONAGGIO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (105, 'STORIA FAMILIARE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (106, 'RAPPORTI PADRE FIGLIO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (107, 'INCIDENTE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (108, 'COSE NON DETTE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (109, 'LIBRI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (110, 'SEGRETI DI FAMIGLIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (111, 'PATERNITÀ');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (112, 'RAPPORTI MADRE FIGLIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (113, 'INDAGINE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (114, 'RAPPORTI FAMIGLIARI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (115, 'DISTOPICO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (116, 'MERITOCRAZIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (117, 'SOCIETÀ FUTURA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (118, 'RAPPORTO MADRE FIGLIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (119, 'FUORILEGGE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (120, 'RAPINE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (121, 'BANDE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (122, 'POTERI MENTALI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (123, 'DEMONI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (124, 'GIALLO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (125, 'SPECIALIZZAZIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (126, 'RAPPORTI CON I COLLEGHI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (127, 'MLOL');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (128, 'PERCEZIONE DI SE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (129, 'TENTAZIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (130, 'ISOLAMENTO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (131, 'POTERI PSICHICI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (132, 'DISTRUZIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (133, 'QUATTRO RACCONTI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (134, 'STORICO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (135, 'BRIVIDO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (136, 'SOCIAL');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (137, 'IDENTITÀ RUBATE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (138, 'AUTOBIOGRAFICO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (139, 'RAPPORTO TRA SORELLE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (140, 'FOTOGRAFIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (141, 'SCOPERTA DEL PASSATO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (142, 'UNIFORMITÀ');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (143, 'SCIENZE NATURALI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (144, 'INGANNO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (145, 'FANTASMI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (146, 'SCUOLA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (147, 'INSEGNAMENTO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (148, 'STUDENTI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (149, 'STORIE DI VITA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (150, 'DISASTRO AEREO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (151, 'SOPRAVVIVENZA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (152, 'AMORE TRA SORELLE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (153, 'FIDUCIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (154, 'RISCATTO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (155, 'BODY SHAMING');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (156, 'SFIDA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (157, 'MULTICULTURALITÀ');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (158, 'RIVINCITA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (159, 'PESTE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (160, 'LUTTI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (161, 'SUPERPOTERI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (162, 'DESIDERIO DI VENDETTA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (163, 'CONCETTO DI GIUSTIZIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (164, 'ATMOSFERE GOTICHE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (165, 'CASE INFESTATE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (166, 'TERREMOTO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (167, 'DISPERAZIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (168, 'RICOSTRUZIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (169, 'ABBANDONO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (170, 'NUOVA VITA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (171, 'RIFIUTO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (172, 'IDENTITÀ DI GENERE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (173, 'SENSO DI COLPA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (174, 'RELIGIOSITÀ ESTREMA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (175, 'RIEDUCAZIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (176, 'LOTTA PER LA LIBERTÀ');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (177, 'MONDO DELLA MODA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (178, 'CAMBIO VITA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (179, 'PREDATORI SESSUALI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (180, 'LOTTA PER I DIRITTI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (181, 'CONSAPEVOLEZZA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (182, 'FUTURO PREDETERMINATO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (183, 'LIBERTÀ');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (184, 'RAZZISMO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (185, 'DISGREGAZIONE FAMILIARE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (186, 'AIUTO RECIPROCO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (187, 'MUTISMO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (188, 'CROLLO PSICOLOGICO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (189, 'RIVALSA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (190, 'RESA DEI CONTI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (191, 'EPIDEMIA DI FEBBRE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (192, 'LOTTA PER LA SOPRAVVIVENZA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (193, 'ATMOSFERE ORIENTALI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (194, 'RIBELLIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (195, 'OMICIDI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (196, 'MISTERI DAL PASSATO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (197, 'SECONDA GUERRA MONDIALE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (198, 'FRONTI OPPOSTI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (199, 'ERUZIONE DEL VESUVIO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (200, 'ACQUEDOTTI ROMANI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (201, 'SOCIETÀ CORROTTA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (202, 'ANTISEMITISMO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (203, 'VENEZIA E I TURCHI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (204, 'BERNARDINO DA FELTRE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (205, 'IRONIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (206, 'SITUAZIONE DEGLI ANZIANI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (207, 'MADRI CARCERATE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (208, 'RAPPORTO MADRE FIGLIO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (209, 'NAPOLI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (210, 'ABBANDONO INFANTILE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (211, 'VITA SELVATICA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (212, 'LEGAME CON LA NATURA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (213, 'OMOSESSUALITÀ');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (214, 'SPORT');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (215, 'GRAVIDANZA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (216, 'DECISIONI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (217, 'STORIA DI FAMIGLIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (218, 'GENOCIDIO ARMENO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (219, 'FUGA PER LA SALVEZZA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (220, 'RICORDI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (221, 'SOLITUDINE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (222, 'RAPPORTI CON GLI ALTRI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (223, 'PASSATO MISTERIOSO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (224, 'STILE GOTICO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (225, 'MISTERY');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (226, 'REALTÀ PARALLELA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (227, 'SINDROME DI ASPERGER');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (228, 'SPARIZIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (229, 'UPERSTIZIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (230, 'TRADIZIONI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (231, 'EGOISMO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (232, 'SACRIFICIO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (233, 'STORIA ITALIANA 1945');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (234, 'DESTINO DEGLI EBREI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (235, 'FAMIGLIE SEPARATE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (236, 'PERDITA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (237, 'AIUTO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (238, 'PERIODO POST BELLICO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (239, 'NAZISTI E CACCIATORI DI NAZISTI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (240, 'INDAGINI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (241, 'FALSE IDENTITÀ');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (242, 'FUGA CRIMINALI NAZISTI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (243, 'COMPLICITÀ PERON');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (244, 'ASSASSINI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (245, 'ROMANZO DENUNCIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (246, 'VIOLAZIONE DEI DIRITTI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (247, 'ESPROPRIAZIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (248, 'POLITICA INGHILTERRA USA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (249, 'AMBIENTE NOBILIARE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (250, 'MONACAZIONE FORZATA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (251, 'SCELTE DI VITA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (252, 'ITALIA MEDIEVALE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (253, 'EPICA GRECA CLASICA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (254, 'AMORE ACHILLE PATROCLO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (255, 'ANTICHE LEGGENDE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (256, 'TEMA DELLA MEMORIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (257, 'TEMA DELLA RICERCA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (258, 'CACCIA ALLE STREGHE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (259, 'FUGA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (260, 'NUOVO INIZIO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (261, 'TRATTA DEGLI SCHIAVI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (262, 'PIRATERIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (263, 'ITALIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (264, 'LEGGI RAZZIALI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (265, 'EBREI PERSEGUITATI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (266, 'BERLINO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (267, 'RAGAZZI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (268, 'SOLIDARIETÀ');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (269, 'LITIGI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (270, 'PERICOLO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (271, 'MONDO ANTICO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (272, 'OLIMPIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (273, 'ALFONSINA STRADA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (274, 'CICLISMO FEMMINILE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (275, 'LOTTA ALLE CONVENZIONI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (276, 'SUPERAMENTO DEI LIMITI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (277, 'VIAGGI NEL TEMPO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (278, 'MEDIOEVO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (279, 'LOTTE DI POTERE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (280, 'GRECIA ANTICA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (281, 'LOGICA ARISTOTELICA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (282, 'INVASIONE ALIENA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (283, 'CONDIVISIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (284, 'TOLLERANZA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (285, 'CREATURE ALIENE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (286, 'RICERCA DELLA PACE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (287, 'ALLUVIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (288, 'STORIE DI FAMIGLIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (289, 'SCONTRI FEMMINILI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (290, 'MITO DI ORFEO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (291, 'INSIDIE DEL WEB');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (292, 'INFILTATI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (293, 'SEPARAZIONE DEI GENITORI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (294, 'INCONTRI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (295, 'REALTÀ INASPETTATE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (296, 'APPROPRIAZIONI INDEBITE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (297, 'BUGIE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (298, 'VOGLIA DI VIVERE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (299, 'AMORE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (300, 'VIAGGIO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (301, 'CRESCITA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (302, 'LEGIONE SCOMPARSA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (303, 'RICERCA AMICIZIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (304, 'SOGNI E SPERANZE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (305, 'RAPPORTO PADRE FIGLIO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (306, 'AMICIZIA E RIVALITÀ');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (307, 'VOGLIA DI RISCATTO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (308, 'BIOGRAFICO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (309, 'LOTTA ALLA MAFIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (310, 'STRAGI DI MAFIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (311, 'DIFFICOLTÀ DI COMUNICAZIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (312, 'CONOSCENZA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (313, 'ASSENZA FAMILIARE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (314, 'SOTTERFUGI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (315, 'RIVELAZIONI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (316, 'RAPPORTO NONNO NIPOTE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (317, 'SEPARAZIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (318, 'ISPIRATO AD UN FATTO STORICO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (319, 'FUGA DEGLI EBREI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (320, 'GIUSTIZIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (321, 'TRASFERIMENTO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (322, 'EVENTI MISTERIOSI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (323, 'VICENDE FAMILIARI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (324, 'RAPPORTO NONNA NIPOTE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (325, 'VERITÀ NASCOSTE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (326, 'UNIVERSITÀ');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (327, 'SCRITTURA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (328, 'NUOVE AMICIZIE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (329, 'AMORE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (330, 'PRIMO ROMANZO GOTICO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (331, 'AMBIENTAZIONE MEDIOEVALE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (332, 'MATRIMONIO COMBINATO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (333, 'PRIMO DI UNA QUADRILOGIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (334, 'IDENTITÀ');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (335, 'RASSEGNAZIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (336, 'ACCETTAZIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (337, 'VIOLENZA DI GRUPPO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (338, 'COLPEVOLIZZAZIONE DELLA VITTIMA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (339, 'ASSOLUZIONE DEI COLPEVOLI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (340, 'SOCIAL NETWORK');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (341, 'CAMBIAMENTO CLIMATICO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (342, 'PANDEMIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (343, 'SVOLTE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (344, 'DIARIO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (345, 'SARCASMO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (346, 'SCOPERTA DI SE STESSI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (347, 'AFRICA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (348, 'EMANCIPAZIONE FEMMINILE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (349, 'SEGRETI DEL PASSATO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (350, 'SPY STORY');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (351, 'TENSIONI USA URSS');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (352, 'SCOPERTE SCIENTIFICHE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (353, 'FUGA DA CASA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (354, 'DISAGIO GIOVANILE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (355, 'DROGHE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (356, 'DIPENDENZA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (357, 'SFRUTTAMENTO MINORILE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (358, 'RACKET MAFIA CINESE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (359, 'SPERANZE PER IL FUTURO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (360, 'RIMORSO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (361, 'OMBRE DEL PASSATO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (362, 'SECONDA POSSIBILITÀ');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (363, 'GIAPPONE FEUDALE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (364, 'LOTTE TRA CLAN');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (365, 'DUELLI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (366, 'SCOPERTE DOLOROSE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (367, 'TRADIMENTO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (368, 'MISTERI DEL PASSATO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (369, 'SCOPERTA DI SE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (370, 'VIOLENZA IN FAMIGLIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (371, 'HORROR');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (372, 'CORAGGIO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (373, 'ALLEATI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (374, 'CAMBIAMENTO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (375, 'COMING OUT');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (376, 'PREGIUDIZI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (377, 'LOTTA PER LA GIUSTIZIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (378, 'COMPRENSIONE DI SE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (379, 'ERRORI DEL PASSATO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (380, 'SECONDE POSSIBILITÀ');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (381, 'DIARIO ESTIVO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (382, 'PRIMI AMORI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (383, 'FANTASY CLASSICO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (384, 'AMBIZIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (385, 'ORGOGLIO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (386, 'RAPPORTO MAESTRO ALLIEVO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (387, 'VESPE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (388, 'RICERCA DELLA CURA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (389, 'RACCONTI GOTICI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (390, 'CREATURE MISTERIOSE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (391, 'VAMPIRI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (392, 'TRAFFICO DI STUPEFACENTI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (393, 'RICERCA DEL PASSATO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (394, 'MAFIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (395, 'DESIDERIO DI GIUSTIZIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (396, 'VIOLENZA DI GENERE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (397, 'DISCRIMINAZIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (398, 'AUTODETERMINAZIONE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (399, 'SORELLANZA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (400, 'CONFLITTO GENERAZIONALE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (401, 'LEGAMI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (402, 'GENITORIALITÀ');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (403, 'AUTISMO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (404, 'PROGRESSI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (405, 'CAMBIAMENTI DI VITA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (406, 'PROSPETTIVE DIVERSE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (407, 'PASSATO E FUTURO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (408, 'ATTIVISTA PER I DIRITTI CIVILI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (409, 'MOVIMENTO BLACK PANTHERS');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (410, 'LOTTA ALLE DISUGUAGLIANZE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (411, 'BAMBINI EBREI NASCOSTI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (412, 'RESISTENZA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (413, 'GRUPPO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (414, 'NAUFRAGI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (415, 'SORELLE');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (416, 'INCOMPRENSIONI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (417, 'RIAVVICINAMENTO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (418, 'SCONTRI RAZZIALI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (419, 'SEGRETI');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (420, 'OCCUPAZIONE TEDESCA DELLA FRANCIA');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (421, 'RAPIMENTO');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (422, 'AFGHANISTAN');
INSERT INTO GAL_paroleChiave (id, parola) VALUES (423, 'VIAGGIO PER LA SALVEZZA');

-- Inserimento opere
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (1, 'Il volo di Alice', 0, 'Le vite di Alice e Jamie, quindicenni iscritti a un liceo classico milanese, non potrebbero essere più diverse. Alice vive in centro, in una bella casa con una madre intellettuale e troppo concentrata su se stessa per costruire un rapporto d''amore con la figlia. A Jaime l''amore di sua madre è mancato per tanti anni, ma ora che lei ha un permesso di soggiorno e un lavoro, ha potuto raggiungerla nel quartiere di periferia dove condividono un minuscolo appartamento. Quando Alice e Jaime si innamorano,  nessuno sembra disposto ad accettarlo. Ma la loro storia è più forte degli ostacoli, più tenace dei pregiudizi.', 1, 'copertina001.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (2, 'Red', 0, 'Per l''amica Leslie, Gwendolyn è una ragazza fortunata: quanti possono dire di abitare in un palazzo antico nel cuore di Londra, pieno di saloni, quadri e passaggi segreti? Eppure Gwen non ne è affatto convinta: a causa della morte del padre si è trasferita con la mamma e i fratelli a casa della a nonna, la gelida Lady Arisa. Qui deve fare i conti con zia Glenda, che la considera una ragazzina superficiale e con sua cugina  Charlotte: capelli rossi, aggraziata, bravissima a scuola e con un sorriso da Monna Lisa. È lei la prescelta, colei che dalla nascita è stata addestrata per il grande giorno in cui compirà il primo salto nel passato. Charlotte si dà un sacco di arie, ma Gwen proprio non la invidia: sa bene che si tratta di una missione pericolosissima non solo per la sua famiglia ma per l''umanità intera. .Gwen non vorrebbe davvero trovarsi al suo posto. Per nulla al mondo...', 1, 'copertina002.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (3, 'Ragazzi selvaggi', 0, 'Luca fa il conto alla rovescia: con la terza media si chiudono tre anni d''inferno. Non vede l''ora, ormai è questione di settimane. Anche Mattia fa il conto alla rovescia: aspetta il giorno in cui le sue stupide erre non suoneranno più così stupide e riuscirà a dichiararsi a Clara, l''attaccante più tosta della squadra di calcio. E poi ci sono Massimo, Lorenzo, Alberto. Loro sono quelli che camminano in gruppo e in gruppo trascinano i ragazzi grassi sotto le docce gelide. Anche loro però fanno il conto alla rovescia: contano i giorni che li separano dallo scherzo di fine anno, quell''evento che li farà passare alla storia e farà ricordare i loro nomi tra le mura della scuola media.', 1, 'copertina003.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (4, 'Leviathan', 0, 'Siamo sull’orlo della Prima guerra mondiale. Mentre il giovane Alek, principe dell''Impero austro-ungarico, è in fuga sul suo Camminatore, di là dalla Manica una ragazza,  Deryn Sharp, si traveste da maschio per diventare pilota nell''aviazione britannica. Ma il suo segreto rischia continuamente di essere scoperto. I due ragazzi appartengono ai due opposti schieramenti: lui ai Cigolanti, lei ai Darwinisti. Ma il destino vuole che le loro strade si incrocino nel modo piú inatteso portandoli entrambi a  bordo del Leviathan, un gigantesco animale volante, metà balena metà dirigibile, cheforse li strapperà al frastuono della guerra.', 0, 'copertina004.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (5, 'Nodi al pettine', 0, 'Costretto dalla scuola a frequentare uno stage, Louis accetta senza pensarci troppo il suggerimento della nonna e si propone al nuovo salone di acconciature che lei frequenta. Scopre così un mondo di relazioni, emozioni e sentimenti, a cui inizialmente pare del tutto impreparato ma che lo renderanno più forte, più sensibile e sicuramente più pronto a entrare nel mondo degli adulti.', 0, 'copertina005.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (6, 'Oh, boy', 0, 'I Morlevent sono tre: un maschio e due femmine. Orfani da poche ore. Hanno giurato di non separarsi mai. I tre Morlevent non hanno nessuna intenzione di affidare il loro futuro alla prima assistente sociale che passa. Il loro obiettivo è lasciare l''orfanotrofio dove sono stati parcheggiati e trovare una famiglia. Al momento, solo due persone  potrebbero accettare di adottarli. Per delle ottime ragioni. Per delle tremende ragioni. Una delle due non brilla per simpatia, l''altro è irresponsabile e... ah, in più si detestano.', 0, 'copertina006.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (7, 'Fat boy swim', 0, 'I Morlevent sono tre: un maschio e due femmine. Orfani da poche ore. Hanno giurato di non separarsi mai. I tre Morlevent non hanno nessuna intenzione di affidare il loro futuro alla prima assistente sociale che passa. Il loro obiettivo è lasciare l''orfanotrofio dove sono stati parcheggiati e trovare una famiglia. Al momento, solo due persone  potrebbero accettare di adottarli. Per delle ottime ragioni. Per delle tremende ragioni. Una delle due non brilla per simpatia, l''altro è irresponsabile e... ah, in più si detestano.', 0, 'copertina007.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (8, 'Il principe della nebbia', 0, '1943: il padre di Max decide di trasferire la famiglia sulla costa spagnola, per proteggerla dalla guerra. La nuova casa sembra tranquilla ma, appena arrivato, Max scopre  un giardino disseminato di statue inquietanti e non tarda a sapere della misteriosa scomparsa del figlio dei precedenti proprietari. Insieme alla sorella Alicia eall''amico Roland, Max comincia a indagare sulla storia di un oscuro naufragio e di un''ombra luciferina che emerge nel cuore della notte per scomparire con le prime nebbie dell''alba...', 0, 'copertina008.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (9, 'Le luci di settembre', 0, 'Durante l''estate del 1937 Simone Sauvelle, rimasta all''improvviso vedova, abbandona Parigi assieme ai figli, Irene e Dorian, e si trasferisce in un piccolo paese sulla costa per sfuggire agli ingenti debiti accumulati dal marito. Trova lavoro come governante per il facoltoso fabbricante di giocattoli Lazarus Jann in una gigantesca  magione chiamata Cravenmoore. Tutto sembra andare per il meglio. Lazarus si dimostra un uomo gradevole, tratta con riguardo Simone e i figli, a cui mostra gli strani  esseri meccanici che ha creato, mentre Irene si innamora di Ismael, il cugino di Hannah, la cuoca della casa. Ma eventi macabri e strane apparizioni sconvolgono  l''armonia di Cravenmoore. Spetterà a Irene e Ismael lottare contro un nemico invisibile per salvare Simone e svelare l''oscuro segreto che avvolge la fabbrica dei  giocattoli, un enigma che li unirà per sempre e litrascinerà nella più emozionante delle avventure in un mondo labirintico di luci e ombre.', 0, 'copertina009.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (10, 'L’erede di Hastur', 0, 'Nella magica e remota terra di Darkover, gli abitanti hanno imparato a usare i poteri delle pietre matrici per potenziare al massimo le capacità della loro mente. Dopo secoli di guerre che hanno segnato le Ere del Caos, è stato stipulato un patto solenne che impedisce l''uso delle matrici come armi. Ma l''arrivo dei terrestri, dopo millenni  di isolamento, minaccia la stabilità del rigoroso ordine feudale del pianeta e rischia di mettere a repentaglio il potere delle sette famiglie che lo popolano. Ai Comyn, casta  dominante di Darkover, non resta che sperare che Regis Hastur, nipote del leggendario Hastur, Signore della Luce, possa in qualche modo imporre la suaautorità sui terrestri salvaguardando, così, la pace su Darkover.', 0, 'copertina010.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (11, 'Sempre tornare', 0, 'È l''estate del 1991, Daniele ha diciassette anni e questa è la sua prima vacanza da solo con gli amici. Due settimane lontano da casa, da vivere al massimo tra spiagge, discoteche, alcol e ragazze. Ma c''è qualcosa con cui non ha fatto i conti: se stesso. È sufficiente un piccolo inconveniente nella notte di Ferragosto perché Daniele decida  di abbandonare il gruppo e continuare il viaggio a piedi, da solo, dalla Riviera Romagnola in direzione Roma: forse riuscirà a comprendere la ragione dell''inquietudine che da sempre lo punge e lo sollecita. Troverà chi è logorato dalla solitudine ma ancora capace di slanci, chi si affaccia su un abisso di follia, sconfitti dalla vita, prepotenti  inguaribili. E incontrerà l''amore, negliocchi azzurri di Emma. Ma soprattutto Daniele incontrerà se stesso.', 1, 'copertina011.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (12, 'Lo specchio dei desideri', 0, 'Un giorno la piccola Claire, sottraendosi ai genitori litigiosi, si rifugia nella discarica dietro casa, dove trova uno specchietto rotto dal quale si sente stranamente attratta. È un brutto pezzo di vetro tagliente, ma ha il magico potere di trasformare anche la più squallida realtà in un mondo fiabesco: il cielo bigio nel riflesso diventa azzurro  paradiso e la casa di Claire, una modesta villetta di periferia, si trasforma in un castello. Intanto il tempo passa e Claire cresce, sempre accompagnata dal suo specchio  magico, in cui può vedere una realtà migliorata. Quello specchio creasolo illusioni e Claire, arrabbiata, sta quasi per buttarlo, quandointerviene Peter, un ex compagno delle medie, anche lui in possesso di un frammento dello specchio…', 0, 'copertina012.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (13, 'Cose più grandi di noi', 0, 'Iniziano gli anni Ottanta, l''aria sta cambiando: Milano lo sa, e lo sa bene anche Marghe, che quando esce dal carcere trova suo padre ad aspettarla. Come una bambina ubbidiente ha seguito il consiglio dell''avvocato, dissociandosi dal gruppo armato in cui si è trovata coinvolta quasi per caso. Ma la scarcerazione non è una liberazione:  pur di uscire ha tradito tutti – compreso il suo Pietro, di cui ha perso le tracce – e ora non sa piú chi è. E cosí, agli arresti domiciliari, scruta la casa di fronte, dove l''altra metà della sua famiglia continua a vivere.', 0, 'copertina013.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (14, 'Qualcosa c’inventeremo', 0, 'Gli adulti la chiamano "la situazione": la professoressa Mavaldi, zio Eugenio, persino quello spostato dello zio Gil. La situazione è che Mirko e Tommaso Turriani, orfani da  pochi mesi, affidati allo zio residente a Pavia, non hanno nessuna intenzione di lasciare la loro casa di Milano. Il prezzo più alto per restare da soli sono certi di averlo già pagato, e adesso rigare dritto è l''unico modo per andare avanti. Solo che la vita, loro lo sanno bene, non sempre è d''accordo con noi su quello che ci spetta. E quando  Mirko decide di mentire per andare a Madrid a vedere la finale di Champions,per andarci con Greta, per passare una notte con lei non può immaginare di aver dato il via  a un conto allarovescia, una valanga che rischierà di travolgere tutti.', 0, 'copertina014.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (15, 'Melody', 0, 'Melody è la più intelligente della scuola, ma nessuno lo sa. Quasi tutti ritengono che non abbia alcuna capacità di apprendimento. Se solo lei potesse dire che cosa pensa e che cosa sa... Ma non può. Perché Melody non può parlare. Non può camminare. Non può scrivere. Finché un giorno non scopre qualcosa che potrebbe  permetterle diparlare, per la prima volta nella sua vita', 0, 'copertina015.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (16, 'Stardust', 0, 'In una fredda sera di ottobre una stella cadente attraversa il cielo e il giovane Tristan, per conquistare la bellissima Victoria, promette di andarla a prendere. Dovrà così oltrepassare il varco proibito nel muro di pietra a est del villaggio e avventurarsi nel bosco dove ogni nove anni si raccoglie un incredibile mercato di oggetti magici. È solo  inquell''occasione che agli umani è concesso inoltrarsi nel mondo di Faerie. Tristan non sa di essere stato concepito proprio lì da una bellissima fata dagli occhi viola e da  un giovane umano e non sa neppure che i malvagi figli del Signore degli Alti Dirupisono anche loro a caccia della stella...', 0, 'copertina016.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (17, 'Il figlio del cimitero', 0, 'Ogni mattino Bod fa colazione con le buone cose che prepara la signora Owens. Poi va a scuola e ascolta le lezioni del maestro Silas. E il pomeriggio passa il tempo con Liza, sua compagna di giochi. Bod sarebbe un bambino normale. Se non fosse che Liza è una strega sepolta in un terreno sconsacrato. Silas è un fantasma. E la signora  Owens è morta duecento anni fa. Bod era ancora in fasce quando è scampato all''omicidio dellasua famiglia gattonando fino al cimitero sulla collina, dove i morti l''hanno  accolto e adottato per proteggerlo dai suoi assassini. Da allora è Nobody, il bambino che vive tra le tombe, egrazie a un dono della Morte sa comunicare con i defunti.  Dietro le porte del cimitero nessuno può fargli del male. Ma Bod è un vivo, e forte è il richiamo del mondo oltre il cancello.Un mondo in cui conoscerà l''amicizia dei suoi simili, ma anche l''impazienza di un coltello che lo aspetta da undici lunghissimi anni...', 0, 'copertina017.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (18, 'Nessun dove', 0, 'Richard Mayhew è un giovane uomo d''affari londinese, una persona di buon cuore e dalla vita prevedibile che si districa quotidianamente tra i capricci dell''ambiziosa fidanzata Jessica e le pretese del suo capo. Ma tutto cambia quando, per strada, si imbatte in una ragazza ferita e decide di aiutarla portandola a casa con sé. Un atto di  gentilezza, che lo catapulterà in un mondo fantasmagorico di cui mai avrebbe sognato l''esistenza. Perché sotto le affollate strade di Londra si cela una città parallela popolata di mostri e di santi, di assassini e di angeli, cavalieri in armatura e pallide fanciulle vestite di velluto: le persone che sono precipitate nelle fenditure del mondo.  Ora Richard è uno di loro, edeve imparare a cavarsela in quell''universo di ombre e fantasmi che gli appare insieme stranamente familiare e assolutamente bizzarro. Un insolito destino lo attende laggiù...', 0, 'copertina018.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (19, 'Vivavoce', 0, 'Lucio ha abbandonato le superiori e va a fare l’apprendista in una fabbrica di occhiali. Gli piace, il suo lavoro e l’unico rammarico è non vedere più la sua prof  di italiano,  che in classe faceva sempre leggere lui ad alta voce perché era bravo. E a lei Lucio volevabene. Un giorno Lucio viene licenziato, e si trova a bighellonare per la città.  Entra in una biblioteca e, per la nostalgia della lettura ad alta voce, finisce per aprire un libro e per leggerne l’incipit ad alta voce. Qualcuno che ha avuto modo di  ascoltare il suo speciale ed emozionante modo di leggere, gli offrirà un’attività di volontariato, da “lettore adomicilio”. Lucio andrà così a leggere ad alta voce in case e in ospedali, da anziani e da ammalati.', 0, 'copertina019.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (20, 'A casa tutto bene', 0, 'Lisa e suo fratello Paolo vivono con la madre e con un padre manesco. Lisa implora diverse volte sua madre di lasciare il marito, ma lei non ci riesce e subisce percosse  e umiliazioni. Lisa cerca una vita normale, affetti normali, persone di cui possa fidarsi, soprattutto quando in famiglia la situazione precipita. Una storia di amore e di rispetto, sulla forza che i più piccoli sanno esprimere nelle difficoltà.', 0, 'copertina020.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (21, 'Ladra di jeans', 0, 'Gemma e Padma sono in classe insieme, ma non potrebbero essere più diverse. Gemma è sfacciata, calcolatrice, cinica. Padma invece è timida, grande lettrice, buona.  Ma quando, per un caso fortuito, un paio di jeans passa dall''una all''altra, si innesca tra le due una strana amicizia. Un''amicizia sul filo del rasoio dove la sincerità,il calcolo e l''intelligenza assumono contorni sfumati e pericolosi...', 0, 'copertina021.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (22, 'Il segreto del Grace college', 0, 'Un party di benvenuto in riva al Lake Mirror: così vengono accolte le matricole del Grace College, una prestigiosa università riservata ai migliori studenti del Paese. Ma la festa rischia di trasformarsi in tragedia quando Robert Frost, uno tra gli alunni più brillanti del primo anno, si getta all''improvviso nelle gelide acque del lago e, una volta tratto in salvo, racconta di aver visto una ragazza dai capelli blu tuffarsi da uno scoglio senza più riemergere. Nessuno però ha notato niente, e Robert diventa subito lo zimbello del campus. Soltanto sua sorella Julia gli crede e decide d''indagare, anche perché fin dal loro arrivo in quel luogo quasi inaccessibile, annidato in una sperduta valle delle Montagne Rocciose, lei ha percepito un''atmosfera ostile e minacciosa. E soprattutto perché una ragazza è davvero scomparsa', 0, 'copertina022.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (23, 'Cambio di stagione', 0, 'Marco ha sedici anni e scopre per lo prima volta una nuova dimensione della sua vita: l''amore folgorante per Valeria. È un sentimento fatto di batticuori, delusioni, momenti di felicità sconosciuta, tristezza e anche rabbia. Ma un gravissimo incidente stradale interrompe ogni cosa, lasciando Marco sospeso nel limbo del coma. L''esistenza dei suoi genitori e di quelli che gli sono vicini viene sconvolta, e l''evento tragico costringe un po'' tutti a fare i conti con i sentimenti, i conflitti, i problemi che avevano messo in crisi il mondo di Marco.', 0, 'copertina023.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (24, 'I randagi', 0, 'Si può essere perfettamente innocenti? Luca ed Enrico partono per un''escursione in montagna a lungo progettata. Manuele si aggrega. E'' l''intruso. Facile tormentarlo, così mite e sorridente. Manuele non conosce la paura, non teme i randagi che si aggirano nei boschi, più feroci dei lupi, né serba rancore. Ma è propio così? In un  crescendo di tensione, la storia si sviluppa , senza concedere respiro, dalla spensieratezza iniziale al suo tragico epilogo. Chi è Cain? Chi Abele?', 0, 'copertina024.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (25, 'La ragazza con le scarpe di tela', 0, 'Come per la maggior parte delle sue coetanee, il futuro di Catherine, quindici anni, è già scritto: identico a quello di sua madre e della madre di sua madre. Un giorno, però, la ragazza fa tardi a scuola ed è costretta a tornare a casa correndo. La sensazione di forza e di libertà che prova è un''autentica rivelazione! Ma nel 1966, per una donna, correre è inconcepibile persino in Francia, il paese della libertà e dell''imminente rivolta studentesca. Catherine comincia allora a prendere coscienza di sé, a sognare una vita diversa e a lottare per conquistarla.', 0, 'copertina025.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (26, 'L’età dei sogni', 0, 'Settembre 1957, Grace e Molly hanno 15 anni e sono alla vigilia di un anno scolastico importante. La prima è la reginetta della scuola, con una famiglia benestante alle spalle e gli amici che l''adorano; la seconda è tra i nove studenti neri ammessi per la prima volta nella storia degli Stati Uniti a frequentare un liceo di bianchi. Entrambe hanno qualcosa da imparare l''una dall''altra: Grace dovrà superare le barriere del conformismo e cominciare a pensare con la propria testa, Molly dovrà accettare la mano tesa da parte di chi pensava provasse solo odio nei suoi confronti.', 0, 'copertina026.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (27, 'Semplice la felicità', 0, 'La mattina dei suoi diciotto anni, Chris si sveglia in un appartamento perfettamente pulito e in ordine, ma stranamente deserto. Dapprima pensa che sua madre sia uscita per fare la spesa, oppure che voglia fargli una sorpresa. Pian piano, però, deve arrendersi all''evidenza: la madre se ne è andata per sempre, e lo ha abbandonato. Costretto a cavarsela da solo, Chris impara giorno dopo giorno a badare a sé stesso adattandosi alla nuova situazione. Il suo mondo diventa quello del quartiere alla periferia di Montréal dove vive, circondato dalla variegata umanità che lo popola e con la quale Chris si relaziona, imparando a gestire il suo essere una persona "in ritardo con la testa", come lui stesso si definisce, e costruendosi una quotidianità di affetti e relazioni umane.', 0, 'copertina027.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (28, 'Amici', 0, 'Inizialmente, si potrebbe pensare che "Amici" sia la storia dei tre ragazzi protagonisti. Ma, come il racconto si sviluppa, un quarto amico emerge. Lui è un uomo anziano, spiato di continuo dai ragazzi: Kiyama, lo spilungone; Kawabe, il pazzo occhialuto; Yamashita, il grassone. I tre vogliono imparare a conoscere la morte: cosa significa, come appare, ciò che accade. Il vecchio sembra un buon candidato. Mentre osservano l''uomo, cominciano a interessarsi alla sua vita. Quando il vecchio si accorge di essere spiato, si infuria e forse ha un po'' di paura, in un primo momento, ma sceglie di diventare amico dei tre giovani per trascorrere del tempo insieme, dopo l''orario di scuola. Il vecchio è un esempio per i ragazzi, ma non nel modo in cui lo immaginavano in origine. Lui diventa un amico, un amico adulto che insegna loro la vita semplicemente stando insieme e continuando a essere se stesso.', 0, 'copertina028.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (29, 'Poster girl', 0, 'Sonya Kantor , figlia di uno dei membri di spicco della Delegazione, è rinchiusa da anni nell’Apertura, prigione a cielo alla periferia della città.  La Delegazione è stata rovesciata e sostituita da un nuovo governo e tutti coloro che avevano avuto un ruolo nel regime precedente sono stati rinchiusi insieme alle proprie famiglie. Il resto della popolazione, finalmente libera, ha potuto proseguire con le propria esistenza. Sonya, unica tra i prigionieri, non ha ottenuto il permesso di lasciare l’Apertura allo scoccare della maggiore età e trascorre una vita di ristrettezze, priva di stimoli e speranze. Un giorno un vecchio nemico si presenta da lei con una proposta: se troverà Grace Ward, sottratta alla famiglia dalla Delegazione quando era ancora una bambina, sarà libera…', 0, 'copertina029.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (30, 'L’onda', 0, 'Chi erano Hitler e i nazisti? E come hanno fatto a trascinare un''intera nazione nel loro folle disegno? Ben Ross, insegnante di storia in un liceo di Palo Alto, prova a raccontarlo ai suoi alunni, ma le ragioni di tanto orrore sembrano incomprensibili ai ragazzi. Così Ross decide di ricorrere a un esperimento, utilizzando la classe come laboratorio. Forma un movimento tra gli studenti, L''Onda, e lo dota di simboli, motti, una rigida disciplina e un forte senso della comunità. In pochissimi giorni lo strano test ha sviluppi incontrollabili, e spaventosi. Tratto da una storia vera, un racconto incalzante e pungente, che è anche la denuncia di una verità inoppugnabile: la Storia, anche nei suoi episodi più crudeli e abietti, può ripetersi. In qualsiasi momento.', 1, 'copertina030.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (31, 'La lunga vita di Marianna Ucria', 0, 'Marianna appartiene a una nobile famiglia palermitana del Settecento. Il suo destino dovrebbe essere quello di una qualsiasi giovane nobildonna ma la sua condizione di sordomuta la rende diversa: "Il silenzio si era impadronito di lei come una malattia o forse una vocazione". Le si schiudono così saperi ignoti: Marianna impara l''alfabeto, legge e scrive perché questi sono gli unici strumenti di comunicazione col mondo. Sviluppa una sensibilità acuta che la spinge a riflettere sulla condizione umana, su quella femminile, sulle ingiustizie di cui i più deboli sono vittime e di cui lei stessa è stata vittima. Eppure Marianna compirà i gesti di ogni donna, gioirà e soffrirà, conoscerà la passione.', 1, 'copertina031.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (32, 'La collina', 0, 'Su quella collina non c''era nulla, solo una vigna non curata e un casolare abbandonato. Su quel pezzo di terra incolta Riccardo Mannoni ha costruito un mondo di salvezza e speranza. Rispettando le sue regole in Collina scoprirai la libertà del vivere in comune. La Collina può strapparti all''eroina e restituirti alla vita. Di quel regno Ivan è il figlio prediletto. Ha saputo guadagnarsi la fiducia di Riccardo, diventando il suo autista, la persona a cui affidare i compiti più delicati. In Collina Ivan ha conosciuto Barbara. Si sono innamorati e si sono sposati: Valentina è nata e cresciuta in comunità, un giardino incantato immerso nel verde dove tutti hanno da dormire e da mangiare. Tutti lavorano e sono uguali, il denaro non esiste. Ma non tutti sanno, e molti fanno finta di non sapere, che da quel paradiso è impossibile scappare.', 0, 'copertina032.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (33, 'La Compagnia dei Celestini', 0, 'Anno 1990 e rotti: Memorino, Lucifero a Alì, gli spiriti più ribelli dell''orfanotrofio dei Celestini, fuggono per poter rappresentare Gladonia al Campionato Mondiale di Pallastrada, organizzato dal Grande Bastardo in persona, protettore degli orfani di tutto il mondo. Al loro inseguimento si lanciano Don Biffero, il priore Zopilote dal segreto diabolico, e Don Bracco, il segugio di orfani, nonché il celebre e cinico giornalista Fimicoli con il fedele scudiero-fotografo Rosalino. Nella fuga e nell''inseguimento si incontrano, si perdono e si ritrovano personaggi straordinari, i nove pittori pazzi Pelicorti, la bionda e misteriosa Celeste, i magici gemelli campioni di pallastrada, il re dei famburger Barbablù, il meccanico Finezza, il professor Eraclitus, l''Egoarca Mussolardi, l''uomo più ricco e fetente di Gladonia, e le numerose squadre di pallastrada', 0, 'copertina033.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (34, 'Pomodori verdi fritti…', 0, 'Fannie Flagg racconta la storia del caffè aperto in un''isolata località dell''Alabama dalla singolare coppia formata da Ruth, dolce e riservata, e Idgie, temeraria e intraprendente. Un locale, il loro, che è punto di incontro per i tipi umani più diversi e improbabili: stravaganti sognatori, poetici banditi, vittime della Grande Depressione. La movimentata vicenda che coinvolge Ruth e Idgie, implicate loro malgrado in un omicidio, e la tenacia che dimostrano nello sconfiggere le avversità, donano a chiunque segua le loro avventure la fiducia e la forza necessarie per affrontare le difficoltà dell''esistenza.', 1, 'copertina034.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (35, 'Monaco', 0, 'Settembre 1938. Hugh Legat è uno degli astri nascenti del Servizio diplomatico britannico e lavora al numero 10 di Downing Street come segretario particolare del primo ministro, Neville Chamberlain. L''aristocratico Paul von Hartmann fa parte dello staff del ministero degli Esteri tedesco ed è in segreto un membro della cospirazione anti-Hitler. I due uomini, che si erano conosciuti e frequentati a Oxford, non si sono più visti né sentiti per sei anni, fino al giorno in cui le loro strade si incrociano nuovamente in circostanze drammatiche in occasione della Conferenza di Monaco, un momento cruciale che definirà il futuro dell''Europa. Entrambi si ritroveranno di fronte a un grave dilemma: quando sei messo alle strette e il rischio è troppo alto, chi decidi di tradire? I tuoi amici, la tua famiglia, il tuo paese o la tua coscienza?', 0, 'copertina035.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (36, 'Abbandonare un gatto', 0, 'Con Abbandonare un gatto, Murakami scrive per la prima volta della sua famiglia, e in particolare di suo padre. Ne nasce un ritratto toccante, il racconto sincero del «figlio qualunque di un uomo qualunque». E forse proprio per questo speciale.', 0, 'copertina036.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (37, 'La sfida', 0, 'Estate. Tempo di vacanze, di corse in bicicletta, di partite di calcio con gli amici. Non per Danny. Niente è più lo stesso a casa sua dalla sera in cui la mamma rientra scortata da due poliziotti. C''è stato un grave incidente, però la mamma non ne ha colpa. Ma è proprio così? E chi è la ragazzina dai capelli rossi che si presenta a casa loro e dichiara di sapere come stanno davvero le cose? John Boyne ci regala una nuova storia lancinante, in cui ancora una volta sono i bambini a deviare il corso degli eventi.', 1, 'copertina037.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (38, 'Book jumpers', 0, 'Quando ha lasciato il suo paesino in Germania per passare le vacanze sull''isola scozzese da cui proviene sua madre, Amy non si sarebbe mai aspettata di poter "saltare" nei libri e di trovarsi faccia a faccia con i suoi personaggi preferiti della letteratura. Ma quella che poteva sembrare un''affascinante avventura si trasforma in un''impresa pericolosa quando cominciano ad accadere strane sparizioni...', 0, 'copertina038.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (39, 'La mia vita secondo me', 0, 'Mi chiamo Rebecca Rafferty, e mia madre mi sta rovinando la vita. Tanto per cambiare! Quattordici anni, primo anno di superiori, due amiche del cuore, una passione per la batteria e per... sì, lo ammetto, oltre alla musica mi piace parecchio anche Paperboy, il ragazzo che consegna i giornali. Questa sono io. Il problema è che mia madre, scrittrice di successo, ha avuto la brillante idea di cambiare genere pubblicando il suo primo libro per ragazzi. E indovinate un po''? La protagonista ha quattordici anni e tutti pensano che sia ispirata a me!', 0, 'copertina039.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (40, 'Bambini di cristallo', 0, 'A Billie non piace affatto la nuova casa in cui si è trasferita con sua madre. Mobili tarlati e oggetti polverosi, resti spettrali dei precedenti inquilini, riempiono la vecchia abitazione, la vernice si scrosta dai muri e ovunque c''è un odore particolare, come se nessuno la abitasse da parecchio tempo. Ma non solo: strane cose accadono, specialmente di notte, quando tutti dormono. Tutti tranne Billie che, con gli occhi sbarrati nell''oscurità, sente con crescente terrore inquietanti rumori sul tetto, e movimenti misteriosi che provengono dal piano di sotto. I vicini e la comunità locale stanno nascondendo qualcosa, un segreto sull''edificio e sul suo passato. Quando appaiono dal nulla due misteriose statuette di cristallo il mistero si infittisce, ma la madre di Billie pensa che si tratti solo di fantasie della figlia e del suo nuovo amico Aladdin. Così i due ragazzi si troveranno a fare i conti da soli con la tragica storia della casa...', 1, 'copertina040.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (41, 'La classe', 0, 'Immagina una scuola in cui non c''è spazio per i favoritismi e tutti sono giudicati in base ai risultati. Una scuola in cui gli studenti migliori non vengono rallentati dai mediocri o presi in giro dai bulli. In America, tutto questo è diventato realtà grazie al Q, un quoziente calcolato sulla base di test e sulla condotta, che determina l''istituto da frequentare: gli alunni più brillanti vengono ammessi nelle impegnative Scuole Argento, che assicurano l''ingresso ai college più esclusivi, mentre gli studenti normali rimangono nelle Scuole Verdi. Le «mele marce», invece, sono allontanate dalle famiglie e portate nelle Scuole Gialle, delle strutture isolate dove imparano le materie di base e la disciplina. E per fare in modo che nessuno rinunci a migliorarsi o si sieda sugli allori, i test Q vengono ripetuti ogni mese…', 0, 'copertina041.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (42, 'La leggenda di Scarlett&Browne', 0, 'In un''Inghilterra colpita da immani catastrofi che hanno condotto al collasso della civiltà, Londra è diventata una laguna e la gente vive all''interno di isolate roccaforti. Solo pochi fuorilegge hanno l''audacia di sfidare l''ignoto nelle inospitali Terre Selvagge. Tra loro c''è Scarlett McCain. Rapinatrice dal grilletto facile e dal carattere fiero e indipendente, ha un talento naturale per cavarsela nelle situazioni più estreme e la spiccata tendenza a cacciarsi in grossi guai. Dopo aver messo a segno il suo ultimo rocambolesco colpo, durante la fuga si imbatte nei rottami di un autobus e nell''unico superstite di un tragico incidente stradale, Albert Browne, un ragazzo apparentemente dolce e inoffensivo ma dal passato misterioso e in possesso di poteri tanto oscuri quanto pericolosi.', 0, 'copertina042.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (43, 'L’amuleto di Samarcanda', 0, 'Il millenario jinn Bartimaeus, il demone che costruì le mura di Uruk, Karnak e Praga, che parlò con re Salomone, che cavalcò per le praterie con i padri dei bisonti, viene improvvisamente richiamato dal mondo degli spiriti ed evocato a Londra. Una Londra tetra e cupa dove la magia consiste in un''unica capacità: quella di evocare e asservire demoni, i quali, loro malgrado, obbediranno a ogni ordine del mago che li tiene in suo potere. Bartimaeus deve compiere una missione difficilissima: rubare l''Amuleto di Samarcanda al temibile e ambizioso Simon Lovelace...', 0, 'copertina043.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (44, 'L’allieva', 0, 'Alice Allevi è una giovane specializzanda in medicina legale. Ha ancora tanto da imparare e sa di essere un po'' distratta, spesso sbadata. Ma di una cosa è sicura: ama il suo lavoro. Anche se l''istituto in cui lo svolge è un vero e proprio santuario delle umiliazioni. E anche se i suoi superiori non la ritengono tagliata per quel mestiere. Alice resiste a tutto, incoraggiata dall''affetto delle amiche, dalla carica vitale della sua coinquilina giapponese, Yukino, e dal rapporto di stima, spesso non ricambiata, che la lega a Claudio, suo collega e superiore (e forse qualcosa in più). Fino all''omicidio…', 1, 'copertina044.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (45, 'La scatola dei bottoni di Gwendy', 0, 'Gwendy Peterson ha dodici anni e vive a Castle Rock, una cittadina piccola e timorata di Dio. È cicciottella e per questo vittima del bullo della scuola, che è riuscito a farla prendere in giro da metà dei compagni. Per sfuggire alla persecuzione, Gwendy corre tutte le mattine sulla Scala del Suicidio.. Un giorno, mentre boccheggia per riprendere il respiro, Gwendy è sorpresa da una presenza inaspettata: un singolare uomo in nero: è Mr. Farris, e la osserva da un pezzo. Come tutti i bambini, Gwendy si è sentita mille volte dire di non dare confidenza agli sconosciuti, ma questo sembra davvero speciale, dolce e convincente. E ha un regalo per lei: una scatola, un bell''oggetto di mogano antico, coperto da una serie di bottoni colorati. Che cosa ottenere premendoli dipende solo da Gwendy. Nel bene e nel male.', 0, 'copertina045.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (46, 'Carrie', 0, 'Carrie è un''adolescente presa di mira dai compagni, ma ha un dono. Può muovere gli oggetti con il potere della mente. Le porte si chiudono. Le candele si spengono. Un potere che è anche una condanna. E quando, inaspettato, arriva un atto di gentilezza da una delle sue compagne di classe, un''occasione di normalità in una vita molto diversa da quella dei suoi coetanei, Carrie spera finalmente in un cambiamento. Ma ecco che il sogno si trasforma in un incubo, quello che sembrava un dono diventa un''arma di sangue e distruzione che nessuno potrà mai dimenticare.', 0, 'copertina046.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (47, 'Stagioni diverse', 0, 'Un quartetto di racconti in bilico tra l''orrore e l''avventura, l''incubo e la fantasia. Il riscatto di un uomo condannato ingiustamente per omicidio. Il morboso rapporto tra un adolescente e un ex nazista. Quattro ragazzini alla ricerca del cadavere di un coetaneo. Una donna che partorisce in circostanze surreali. Quattro storie da brivido, agghiaccianti e paradossali, che hanno per protagonisti mostri moderni.', 0, 'copertina047.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (48, 'I viaggi di Daniel Ascher', 0, 'Un quartetto di racconti in bilico tra l''orrore e l''avventura, l''incubo e la fantasia. Il riscatto di un uomo condannato ingiustamente per omicidio. Il morboso rapporto tra un adolescente e un ex nazista. Quattro ragazzini alla ricerca del cadavere di un coetaneo. Una donna che partorisce in circostanze surreali. Quattro storie da brivido, agghiaccianti e paradossali, che hanno per protagonisti mostri moderni.', 0, 'copertina048.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (49, 'Il sole a mezzanotte', 0, 'Katie Price ha diciassette anni e una rara malattia che le impedisce di rimanere anche solo un secondo sotto la luce diretta del sole. Farlo le costerebbe la vita. Solo al tramonto il mondo le si spalanca davanti. Una sera, mentre suona la chitarra cantando le sue canzoni in stazione, davanti a lei appare Charlie, la sua “cotta tremenda”, l''ex atleta del liceo di cui Katie è innamorata da dieci anni in gran segreto, senza mai aver avuto l''occasione di poterlo incontrare e frequentare. Perché tutto nella vita, per chiunque tranne che per lei, accade alla luce del sole. E quell''incontro cambierà per sempre il destino di entrambi.', 0, 'copertina049.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (50, 'Fake falsi profili', 0, '"Io non sono su Fac, non ne so niente, te lo giuro." "E allora come fai a esserci?" "Non lo so!" Giada lo disse in un modo così disperato che Giacomo capì che era sincera. "Allora c''è una che si chiama come te. E ragiona come te. E dice le cose che diresti tu. Si è sostituita a te completamente." A Giada sembrava tutto irreale, esagerato e quindi finto, e in un certo senso lo era. Era aereo, impalpabile, eppure vero perché scritto lì, su quel maledetto schermo che era impossibile toccare. Forse si poteva far finta che non fosse scritto. Che fosse tutto un gioco. O tutto falso, frutto di una mente malvagia che non si mostrava e lasciava solo dei segnacci. Che però nessuno ignorava.', 0, 'copertina050.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (51, 'Un’estate da morire', 0, 'Meg proprio non la sopporta, sua sorella. Molly è bellissima e amata da tutti, mentre lei si sente solo diversa. Il loro rapporto cambierà un’estate, sullo sfondo della  campagna inglese. Dall’acclamata autrice di letteratura per ragazzi, vincitrice di due medaglie Newbery, il romanzo, di ispirazione autobiografica, racconta momenti dolorosi della crescita con delicatezza e simpatia.', 0, 'copertina051.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (52, 'The giver Il donatore', 0, 'Jonas vive in un mondo perfetto, dove non esistono guerre né fame né dolore. Tutto è meticolosamente organizzato, e a dodici anni ogni cittadino riceve l''incarico cui è destinato. Finché alla Cerimonia dei Dodici Jonas viene scelto come nuovo Portatore di Ricordi, un ruolo unico nella comunità. Addestrato dal Donatore, il ragazzo scoprirà l''esistenza di un passato sconosciuto, di cui rivivrà gli orrori, ma anche tutto ciò che è stato sacrificato in nome della perfezione. E allora la sconvolgente verità metterà Jonas di fronte alla scelta più straordinaria della sua vita.', 0, 'copertina052.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (53, 'L’albero delle bugie', 0, 'Fin da quando era piccola Faith ha imparato a nascondere dietro le buone maniere la sua intelligenza acuta e ardente: nell''Inghilterra vittoriana questo è ciò che devono fare le brave signorine. Figlia del reverendo Sunderly, esperto studioso di fossili, Faith deve fingere di non essere attratta dai misteri della scienza, di non avere fame di conoscenza, di non sognare la libertà. Tutto cambia dopo la morte del padre: frugando tra oggetti e documenti misteriosi, Faith scopre l''esistenza di un albero incredibile, che si nutre di bugie per dar vita a frutti magici capaci di rivelare segreti. È proprio grazie al potere oscuro di questo albero che Faith fa esplodere il coraggio e la rabbia covati per anni, alla ricerca della verità e del suo posto nel mondo.', 1, 'copertina053.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (54, 'La voce delle ombre', 0, 'In una notte cupa e fredda, Makepeace viene costretta a dormire nella gelida cappella di un cimitero: lì nessuno potrà sentirla gridare terrorizzata nel sonno. Perché lei è molto diversa dalle ragazze che, nell''Inghilterra della metà del Seicento, vivono nel suo villaggio. Makepeace ha un dono, che è anche una maledizione: può accogliere gli spiriti dei morti che vagano alla ricerca di un nuovo corpo. E una sera, per la prima volta, è il fantasma di un orso a trovare rifugio dentro di lei. Quando intorno scoppia la guerra civile e Makepeace viene rapita da una famiglia nobile e misteriosa, l''orso diventa l''unico amico di cui può fidarsi. Insieme potrebbero cambiare le sorti del conflitto. Ma altri spiriti malvagi e potenti vorrebbero piegarla alla loro crudele volontà, per annientare il re e sconvolgere tutta l''Inghilterra.', 1, 'copertina054.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (55, 'Domani interrogo', 0, 'La periferia romana dove sorge la scuola che è al centro di questo romanzo è la Rebibbia raccontata da Zerocalcare. Nel liceo si parla romano, e le aule sono abitate da strani esseri viventi: alcuni disegnati sui muri, alcuni umani ma dalle cui bocche escono suoni incomprensibili alla professoressa, che non ha mai pensato di avere la vocazione all’insegnamento e invece ce l’ha, solo che non è una vocazione, è un mestiere. La professoressa, infatti, non ama la vocazione, ama l’inglese. La professoressa è un’intellettuale. La professoressa ha studiato in Italia e all’estero. La professoressa cammina, cammina, cammina perché Roma è grande e perché camminando pensa.', 0, 'copertina055.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (56, 'Nelle terre selvagge', 0, 'Mentre è in volo per raggiungere il padre, Brian precipita insieme al Cessna 406 sul quale sta viaggiando. Nel giro di pochi istanti il ragazzo si trova perso nel selvaggio Nord con solo i vestiti che indossa e il segreto che nasconde dal giorno del divorzio dei genitori... Ora Brian non ha più tempo per la rabbia o l''autocommiserazione. Tutto quello che sa, e tutto il suo coraggio, gli serviranno per sopravvivere.', 1, 'copertina056.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (57, 'Sal', 0, 'Nell''ultimo anno, Sal ha imparato molte cose. Sa come accendere un fuoco, scuoiare un coniglio, costruire un arco. Sa come proteggere la sorellina Pepa da quello che il mondo ha fatto a lei. Sal ha pensato a tutto. Il coltello da caccia e gli scarponcini li ha comprati su Amazon con le carte di credito rubate. Ha preparato il kit del pronto soccorso, studiato le mappe delle foreste scozzesi e passato ore a guardare corsi di sopravvivenza su YouTube. Adesso è pronta. Sal ha tredici anni, sua sorella Pepa solo dieci: due bambine che del mondo sanno già troppo. La mattina in cui scappano di casa si lasciano alle spalle una madre alcolizzata, un patrigno violento e un omicidio. Fuggono dalla brutalità quotidiana per trovare quiete e rifugio nei boschi, dove vivono in una capanna e si nutrono di tutto quello che riescono a cacciare.', 0, 'copertina057.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (58, 'Le reginette', 0, 'Premiate su Fac come le tre ragazze più brutte della scuola, Mireille, Astrid e Hakima non perdono tempo a piangerci sopra. Meglio inforcare le biciclette e partire, destinazione Parigi, dove hanno tutta l''intenzione, ciascuna armata di valido motivo, di imbucarsi alla festa che ogni 14 luglio si tiene all''Eliseo. A mano a mano che la notizia del loro viaggio si diffonde, le tre ragazze sono accolte con grande entusiasmo nei paesi in cui si fermano e diventano delle vere e proprie reginette dei social media e della televisione, al punto da ricevere invito formale niente meno che dal Presidente in persona...', 1, 'copertina058.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (59, 'Annus mirabilis', 0, 'Brooks Geraldine È una mattina del 1666 a Eyam, un piccolo villaggio di montagna del Derbyshire, in Inghilterra, e nel cottage in cui vive, Anna Frith ha appena finito di allattare il piccolo Tom e di scrutare amorevolmente Jamie. Anna, giovane vedova, si avvia verso la scala della soffitta per raggiungere la stanza dove dorme Mr. Viccars, il suo pensionante. Viccars è un sarto girovago ed è gentile. Anna entra nella stanzetta e per poco la brocca non le cade di mano: George Viccm. Inaspettata e innocente eroina, Anna deve affrontare la morte nella sua famiglia, la disintegrazione della sua comunità e il pericolo di un amore illecito', 1, 'copertina059.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (60, 'Iboy', 0, 'Dopo l''incidente che lo ha mandato in coma, Tom si è risvegliato con il potere di sapere e vedere tutto. I frammenti di iPhone che sono rimasti nel suo cervello lo hanno trasformato in un super computer, una sorta di mente artificiale iperconnessa. Può arrivare ovunque, tutte le risposte a domande che non sa nemmeno di aver posto sono già lì, nella sua testa. E dopo aver scoperto della violenza subita da Lucy, la ragazza di cui è innamorato, Tom usa i suoi poteri per punire le gang che dettano legge nel quartiere. Ma qual è il confine tra giustizia e vendetta?', 1, 'copertina060.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (61, 'L’incubo di Hill House', 0, '«In questo autentico classico del genere gotico, Eleanor Vance, giovane e tormentata donna che non ricorda di essere mai stata felice in tutta la sua vita, viene assoldata dal sinistro professor Montague, aspirante cacciatore di fantasmi, per un soggiorno sperimentale a Hill House ... Giunta a destinazione, Eleanor si trova davanti una casa “che sembrava aver preso forma da sola, assemblandosi in quel suo possente schema indipendentemente dai muratori”; un edificio che “drizzava la testa imponente contro il cielo senza concessioni all''umanità”; una costruzione immune da ogni esorcismo: “un luogo non adatto agli uomini, né all''amore, né alla speranza.', 1, 'copertina061.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (62, 'L’incubo di Hill House', 0, '«In questo autentico classico del genere gotico, Eleanor Vance, giovane e tormentata donna che non ricorda di essere mai stata felice in tutta la sua vita, viene assoldata dal sinistro professor Montague, aspirante cacciatore di fantasmi, per un soggiorno sperimentale a Hill House ... Giunta a destinazione, Eleanor si trova davanti una casa “che sembrava aver preso forma da sola, assemblandosi in quel suo possente schema indipendentemente dai muratori”; un edificio che “drizzava la testa imponente contro il cielo senza concessioni all''umanità”; una costruzione immune da ogni esorcismo: “un luogo non adatto agli uomini, né all''amore, né alla speranza.', 1, 'copertina062.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (63, 'Bella mia', 0, 'Come si possono ricomporre i cocci di una vita quando la terra trema e rimescola luoghi, prospettive, relazioni? Ritrovarsi alle prese con un adolescente taciturno e spigoloso che è quasi uno sconosciuto, inventarsi madre quando quell''idea era già stata abbandonata da tempo. È ciò che succede a Caterina, la protagonista di Bella mia, quando Olivia, la sorella gemella che sembrava predestinata alla fortuna, rimane vittima del terremoto dell''Aquila, nella lunga notte del 6 aprile 2009, lasciando il figlio Marco semiorfano. Il padre musicista vive a Roma e non sa come occuparsene, perciò tocca a Caterina e alla madre anziana prendersi cura del ragazzo, mentre ciascuno di loro cerca di dare forma a un lutto che li schiaccia', 1, 'copertina063.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (64, 'L’Arminuta', 0, '«Ero l''Arminuta, la ritornata. Parlavo un''altra lingua e non sapevo piú a chi appartenere. La protagonista, con una valigia in mano e una sacca di scarpe nell''altra, suona a una porta sconosciuta. Ad aprirle, sua sorella Adriana, gli occhi stropicciati, le trecce sfatte: non si sono mai viste prima. Inizia cosí questa storia dirompente e ammaliatrice: con una ragazzina che da un giorno all''altro perde tutto - una casa confortevole, le amiche piú care, l''affetto incondizionato dei genitori. O meglio, di quelli che credeva i suoi genitori. Per «l''Arminuta», come la chiamano i compagni, comincia una nuova e diversissima vita. La casa è piccola, buia, ci sono fratelli dappertutto e poco cibo sul tavolo. Ma c''è Adriana, che condivide il letto con lei. E c''è Vincenzo, che la guarda come fosse già una donna. E in quello sguardo irrequieto, smaliziato, lei può forse perdersi per cominciare a ritrovarsi. L''accettazione di un doppio abbandono è possibile solo tornando alla fonte a se stessi.', 1, 'copertina064.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (65, 'La diseducazione di Cameron Post', 0, 'Alla notizia che i genitori sono morti in un incidente, Cameron prova uno strano miscuglio di dolore, senso di colpa e sollievo. Così non scopriranno mai quello che lei stessa ha appena scoperto: Cameron è gay, inaccettabile nella rigidissima provincia americana in cui vive. Cameron è affidata alla zia ultraconservatrice e deve nascondere il suo segreto. Tutto va bene finché Coley Taylor non arriva in città: bella, spavalda, con il fidanzato perfetto. Nasce un’amicizia inaspettata, intensa, che si trasforma in altro, ma Coley, sotto la pressione della famiglia, denuncia Cameron di fronte alla comunità. Costretta a trasferirsi in un centro di riorientamento per essere curata dall’omosessualità, Cameron dovrà lottare contro un metodo educativo che cerca di cancellare la sua più intima identità, contro l’ipocrisia e un malinteso senso di cura, per ritrovare una libertà nuova', 0, 'copertina065.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (66, 'Carne da macello', 0, 'Jana Novak è una sedicenne alta e allampanata, da sempre a disagio con il suo aspetto androgino. Un giorno, però, mentre è in un parco divertimenti insieme ai suoi amici, viene notata da un talent scout che le propone di iniziare a lavorare come modella per una prestigiosa agenzia di Londra. Da quel momento, la vita di Jana subisce un brusco cambiamento: dalla periferia londinese dove vive con la famiglia entra a far parte di un mondo sfavillante e attrattivo che sembra prometterle un futuro straordinario fatto di ricchezza, viaggi, feste, incontri con creativi e celebrità. Ben presto, però, Jana comprende che dietro alla spessa e frastornante patina glam della fashion industry si nascondono un lato sudicio e orde di insospettabili predatori pronti ad azzannare a ogni passo le loro giovani prede.', 0, 'copertina066.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (67, 'La strada nell’ombra', 0, 'New York, fine Ottocento. Jo Montfort è ricca, bella, e la attende un futuro radioso, promessa sposa del rampollo di una delle famiglie più in vista della città. Jo ha tutto, ma per sé da sempre sogna qualcosa di diverso: una matita e un taccuino, un lavoro come reporter. È una tragedia inaspettata a scuotere lei e la sua famiglia. E anche l’irruzione nella sua vita di Eddie Gallagher, giovane reporter che sa qual è il prezzo della ricerca della verità. Insieme a Eddie, Jo comincia a indagare, come e meglio di una giornalista di professione, sugli affari dei Montfort, che si rivelano via via sempre meno limpidi. La verità emerge cupa e dolorosa, i pericoli sono dietro a ogni angolo nei vicoli di New York, ma anche le avventure, l’amore vero e la più importante delle conquiste: la libertà', 1, 'copertina067.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (68, 'Una voce dal lago', 0, 'In un pomeriggio di calma perfetta, sul lago viene ritrovato il corpo di una giovane donna annegata e Mattie, che l''ha conosciuta all''hotel in cui lavora, non ha le parole per descrivere quello che sente. Proprio lei che, a sedici anni, le parole le colleziona, sognando di studiare a New York e diventare una scrittrice. Ma siamo nell''America del 1906. In un ambiente chiuso e razzista, le danno forza solo la sua insegnante, una poetessa anticonformista, e una voce dal lago. Quella di Grace Brown che, poco prima di morire, le ha consegnato le sue disperate lettere piene di vita e d''amore perché le bruci. Ed è in quelle lettere che Mattie ritrova la sua voce, unita alla forza e alla determinazione di vivere la propria vita', 1, 'copertina068.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (69, 'Le emozioni difettose', 0, 'Kate Malone frequenta l’ultimo anno di liceo ed è bravissima in chimica. Ha fatto domanda di ammissione all’università più importante del paese e, in attesa della lettera di risposta, corre a più non posso, di notte e di giorno. Corre per punirsi, per annullarsi, per non sentire l’ansia e la rabbia che le aggrovigliano le viscere e per fuggire da quel dolore che ha il nome di sua madre, morta molti anni prima. Quando però la casa dei vicini viene distrutta da un incendio, Kate è costretta a fermarsi per affrontare con coraggio se stessa e una realtà del tutto inaspettata', 0, 'copertina069.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (70, 'Speak le parole non dette', 0, 'Dal primo giorno di liceo Melinda Sordino sa di essere un’emarginata. Dopo aver rovinato a tutti la festa di fine anno scolastico chiamando la polizia – la peggior colpa di cui ci si possa macchiare nel dorato mondo del liceo – le sue migliori amiche le hanno tolto la parola e gli altri studenti la guardano con disprezzo. Decide, allora, di rinchiudersi nell’eremo dei suoi pensieri, dove le bugie e le ipocrisie della scuola, degli insegnanti e dei genitori sprofondano nel suo stesso silenzio e l’unico sollievo che le rimane è quello di non parlare. Ma non è tutto così semplice nemmeno nella sua testa, un segreto le secca la gola e le serra le labbra. In questo romanzo, la voce della protagonista parla in nome di tutti gli adolescenti silenziosi e incapaci di aprirsi al resto del mondo', 0, 'copertina070.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (71, 'Febbre', 0, 'Agosto 1793: a Philadelphia scoppia un''epidemia di febbre gialla. Per la quattordicenne Mattie Cook, che vive con la madre e il nonno, tutti i sogni di far diventare la caffetteria di famiglia il locale più elegante e meglio frequentato della città si infrangono contro una realtà da incubo: la febbre dilaga in tutti i quartieri e in tutte le case, sua madre si ammala e obbliga lei e il nonno a fuggire dalla città in cerca di salvezza. Costretta ad affrontare la paura e la fame, a guardarsi da tutto e da tutti, Mattie impara la più dura delle lezioni: quella di sopravvivere, con coraggio e determinazione, senza mai perdere la speranza', 0, 'copertina071.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (72, 'Rebel: il deserto in fiamme', 0, 'Amani non ha mai avuto dubbi: è sempre stata sicura che prima o poi avrebbe trovato una via di fuga dal deserto spietato e selvaggio in cui è nata.. Quello che invece non si aspettava era di dover fuggire per salvarsi la vita, in compagnia di un ricercato per alto tradimento. Tiratrice infallibile, per guadagnare i soldi necessari a realizzare il suo sogno Amani partecipa infatti a una gara di tiro travestendosi da uomo. Tra gli avversari, il più temibile è Jin, uno straniero sfrontato, misterioso e affascinante. Troppo tardi Amani scoprirà che Jin è un personaggio chiave nella lotta senza quartiere tra il sultano di Miraji e il figlio in esilio, il principe Ribelle. Presto i due si troveranno a scappare attraverso un deserto durissimo e meraviglioso, popolato di personaggi e creature stupefacenti: come i bellissimi e pericolosi Buraqi, fatti di sabbia e vento ma destinati a trasformarsi in magnifci destrieri per chi abbia l''ardire di domarli', 0, 'copertina072.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (73, 'Ogni riferimento è puramente casuale', 0, 'Dal rito delle presentazioni, alle campagne comunicative, dall’ossessione della prima pagina, alla ricerca della benevolenza del critico, dalla concorrenza tra editori, alle abitudini degli uffici stampa, all’incubo dei manoscritti, questi racconti sono tutti scritti con un sarcasmo al limite del grottesco. Non a caso la morte, la rovina, la caduta sono presenti in tutte le storie, quasi che il successo sia frutto di un patto col diavolo e si sia davvero disposti a vendere l’anima pur di raggiungere la pubblicazione, il successo, la vetta delle classifiche.', 0, 'copertina073.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (74, 'L’uomo delle castagne', 0, 'Un navigato agente di polizia, a una settimana dalla pensione, si ferma davanti alla fattoria di un vecchio conoscente, nei dintorni di Copenaghen. Qualcosa non va. Un maiale morto lasciato lì. Non si fa così, in campagna. Apre la porta d''ingresso, socchiusa, con due dita, come nei film. Per vedere una cosa che non avrebbe mai voluto vedere: sangue, un cadavere mutilato, altri corpi da scavalcare. Cammina fino all''ultima stanza, dove centinaia di omini fatti di castagne e fiammiferi - infantili, incompleti, deformi - lo guardano ciechi. Stravolto, si chiude la porta alle spalle, senza sapere che l''assassino lo sta fissando…', 1, 'copertina074.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (75, 'V2', 0, 'Novembre 1944. L''ingegnere tedesco Rudi Graf si trova in una cupa cittadina sulla costa olandese occupata dai nazisti per sovrintendere al lancio dei missili V2 su Londra. Nessuno meglio di lui conosce quelle macchine mortali. Fin da bambino ha sognato di inviare un razzo sulla luna. Invece, con il suo amico Wernher von Braun, ha contribuito alla creazione di quest''arma sofisticatissima, capace con la sua testata da una tonnellata di viaggiare a tre volte la velocità del suono. Disilluso e preoccupato, Graf deve obbedire: Hitler ha ordinato la fabbricazione di diecimila missili e nessuno può fermare il suo tentativo disperato di evitare la sconfitta. Kay Caton-Walsh, ausiliaria dell''aeronautica militare britannica, è scampata per poco all''orrore dell''esplosione di uno di questi brutali strumenti di terrore civile e, armata solo di un regolo calcolatore e delle tavole dei logaritmi, partecipa con altre donne a una missione in Belgio, finalizzata a localizzare e distruggere le basi di lancio dei V2.', 1, 'copertina075.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (76, 'Pompei', 0, 'Pompei, agosto 79 d.C. Le sorgenti d''acqua alle pendici del Vesuvio si stanno esaurendo, contaminate dallo zolfo. Solo un uomo avverte il pericolo della situazione: Marco Attilio, nuovo responsabile dell''Aqua Augusta. Il suo predecessore è sparito e qualcosa non funziona nell''acquedotto. Sono anche in atto traffici poco puliti, speculazioni, episodi di corruzione. E Marco diventa un problema. Ma ci sono forze che nemmeno il più potente degli imperi potrà mai controllare', 0, 'copertina076.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (77, 'Se l’acqua', 0, 'Un libro pieno di grazia, l''avventura al tramonto di un mondo che corre sull''acqua osservato dagli occhi più curiosi che ci siano, quelli di un ragazzino che vuole diventare grande. Sulla corrente dei fiumi nulla cambia mai davvero. Al timone degli affusolati burchi dal fondo piatto, da sempre i barcari trasportano merci lungo la rete di acque che si snoda da Cremona a Trieste, da Ferrara a Treviso. Quando Ganbeto sale come mozzo sulla Teresina del nonno Caronte si sente invincibile. Gli attracchi, le osterie, le burrasche, il mare e la laguna, le campane di piazza San Marco, i coloriti modi di dire di Caronte e i suoi cappelli estrosi, le ragazze che s''incontrano lungo le rotte. Presto, però, non potrà più far finta di niente, lui che ha un piede nel vecchio e uno nel nuovo dovrà imparare la lezione più dolorosa di tutte: per crescere bisogna sempre lasciare indietro qualcosa  ITALIA ANNI ’60-MONDO CHE CAMBIA-RAPPORTO NONNO NIPOTE-CRESCITA  Il rogo della Repubblica Molesini Andrea Nel 1480, in un piccolo paese del trevigiano, un bambino sparisce nel nulla. L’archisinagogo Servadio e altri due ebrei vengono accusati di averlo ucciso per impastare col suo sangue le focaccine pasquali. Torturati e condannati a morte per infanticidio rituale, fanno ricorso e il processo si riapre davanti al Senato di Venezia. Boris da Candia, spia della Repubblica di San Marco, uomo di «inganno e di rapina», avventuriero levantino e violento, ma anche colto umanista, è investito di una missione segreta…', 1, 'copertina077.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (78, 'Il rogo della Repubblica', 0, 'Nel 1480, in un piccolo paese del trevigiano, un bambino sparisce nel nulla. L’archisinagogo Servadio e altri due ebrei vengono accusati di averlo ucciso per impastare col suo sangue le focaccine pasquali. Torturati e condannati a morte per infanticidio rituale, fanno ricorso e il processo si riapre davanti al Senato di Venezia. Boris da Candia, spia della Repubblica di San Marco, uomo di «inganno e di rapina», avventuriero levantino e violento, ma anche colto umanista, è investito di una missione segreta', 1, 'copertina079.jpeg');

INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (79, 'La clinica Riposo&Pace', 0, 'Una parodia fantastica e feroce, che mette alla berlina la medicalizzazione del disagio quotidiano, l’ipocrita rivalutazione dei valori dell’essere anziani, la buona morte, i falsi affetti familiari. Un altro tassello della serie «Commedia nera» con cui Francesco Recami prende a bersaglio della sua comicità i paradossi sociali più evidenti e più fastidiosi dell’epoca', 1, 'copertina079.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (80, 'Le madri non dormono mai', 0, 'Diego ha nove anni ed è un animale senza artigli, troppo buono per il quartiere di Napoli in cui è cresciuto. I suoi coetanei lo hanno sempre preso in giro perché ha i piedi piatti, gli occhiali, la pancia. Ma adesso la cosa non ha piú importanza. Sua madre, Miriam, è stata arrestata e mandata assieme a lui in un Icam, un istituto a custodia attenuata per detenute madri. Lí, in modo imprevedibile, il ragazzino acquista sicurezza in sé stesso. Si fa degli amici; trova una sorella nella dolce Melina, che trascorre il tempo riportando su un quaderno le «parole belle»; guardie e volontari gli vogliono bene; migliora addirittura il proprio aspetto. Anche l''indomabile Miriam si accorge con commozione dei cambiamenti del figlio e, trascinata dal suo entusiasmo, si apre a lui e all''umanità sconfitta che la circonda. Diego, però, non ha l''età per rimanere a lungo nell''Icam, deve tornare fuori. E nel quartiere essere piú forte, piú pronto, potrebbe non bastare', 1, 'copertina080.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (81, 'Camera con vista', 0, 'Lucy Honeychurch e George Emerson sono i due protagonisti del romanzo di Edward Morgan Forster. Intorno alla loro contrastata vicenda sentimentale l''autore affronta uno dei suoi temi preferiti: quello del cuore non sviluppato e della lacerazione tra perbenismo ed emotività. E'' l''anima stessa dell''Inghilterra, un''anima nordica, gotica, puritana, contrapposta allo spirito mediterraneo, gioioso, pagano e rinascimentale che i due protagonisti non a caso respirano proprio a Firenze, dove è ambientata la prima parte del libro.', 0, 'copertina081.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (82, 'La ragazza della palude', 0, 'A Barkley Cove, un tranquillo villaggio di pescatori, circolano strane voci sulla Ragazza della Palude. Dall''età di sei anni Kya si aggira completamente sola tra canali e canneti, con qualche straccio addosso e a piedi nudi. Ha al suo attivo un solo giorno di scuola, ma la palude e le sue creature per lei non hanno segreti. Kya impara a decifrare i segni della natura prima ancora di saper leggere un libro. Ma la sua bellezza non tarda a sbocciare: insolita, selvatica, sfuggente accende il desiderio nei ragazzi del paese. Kya scopre l''amore, la sua dolcezza e le sue trappole. Quando negli acquitrini riaffiora il corpo senza vita di Chase Andrews, gli occhi di tutti puntano su di lei, la misteriosa ragazza dimenticata: i mormorii diventano subito accuse, i sospetti incrollabili certezze. Il processo, fuori e dentro al tribunale, trascina la vicenda verso il suo imprevedibile e folgorante epilogo', 1, 'copertina082.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (83, 'La sottile linea scura', 0, 'Nell''afosa estate texana del 1958, il tredicenne Stanley Mitchell lavora nel drive-in del padre, e mette il naso in un segreto che doveva rimanere celato. E la "perdita dell''innocenza" di Stanley, in quell''estate in cui il mondo per lui cambia per sempre, coincide con il miracolo di una resurrezione davvero magica. In perfetta naturalezza, Lansdale ricrea le voci, il sapore, la vita, di un tempo scomparso del tutto, come non fosse mai esistito. La "sottile linea scura", che segna per Stanley la scoperta del male del dolore e della morte insieme con l''esplosione del sesso e la consapevolezza del conflitto razziale, diventa la parete trasparente da varcare per immergerci in quegli anni Cinquanta lontani ormai come la preistoria.', 1, 'copertina083.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (84, 'Sei come sei', 0, 'Sul treno per Roma c''è una ragazzina. Sola e in fuga, dopo un violento litigio con i compagni di classe. Fiera e orgogliosa, Eva legge tanti libri e ha il dono di saper raccontare storie: ha appena undici anni, ma già conosce il dolore e l''abbandono. Giose è stato una meteora della musica punk-rock degli anni Ottanta, poi si è innamorato di Christian, giovane professore di latino: Eva è la loro figlia. Padre esuberante e affettuoso, ha rinunciato a cantare per starle accanto, ma la morte improvvisa di Christian ha mandato in frantumi la loro famiglia. Giose non è stato ritenuto un tutore adeguato, e si è rintanato in un casale sugli Appennini. Eva è stata affidata allo zio e si è trasferita a Milano. Non si vedono da tempo. Non hanno mai smesso di cercarsi…', 0, 'copertina084.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (85, 'Una sottile linea rosa', 0, 'Perla è una ragazza sportiva. La sua prima e unica passione è la corsa e le riesce anche molto bene. Ha un''amica carissima, Allegra, con cui condivide gioie, dolori e chili di gelato. E ha una strana reazione ogni volta che incontra Cesare, un ragazzo poco più grande di lei, anche lui impegnato nell''atletica agonistica. Una sera, alla festa dello sport, complice dell''alcol a cui Perla non è abituata, la ragazza si trova per la prima volta al centro dell''attenzione di Cesare. Troppo. Giorni dopo scopre di essere incinta e scopre che la sua spensieratezza potrebbe finire così. Che cosa fare?', 0, 'copertina085.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (86, 'La masseria delle allodole', 0, 'Ispirato ai ricordi familiari dell''autrice, il racconto della tragedia di un popolo "mite e fantasticante", gli armeni, e la struggente nostalgia per una terra e una felicità perdute. La masseria delle allodole è la casa, sulle colline dell''Anatolia, dove nel maggio 1915, all''inizio dello sterminio degli armeni da parte dei turchi, vengono trucidati i maschi della famiglia, adulti e bambini, e da dove comincia l''odissea delle donne, trascinate fino in Siria attraverso atroci marce forzate e campi di prigionia. In mezzo alla morte e alla disperazione, queste donne coraggiose, spinte da un inesauribile amore per la vita, riescono a tenere accesa la fiamma della speranza; e da Aleppo, tre bambine e un "maschietto-vestito-da-donna" salperanno per l''Italia..', 1, 'copertina086.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (87, 'Io sono leggenda', 0, 'È il 1976. Robert Neville torna a casa dopo una giornata di duro lavoro. Cucina, pulisce, ascolta un disco, si siede in poltrona e legge un libro. Eppure la sua non è una vita normale. Soprattutto dopo il tramonto. Perché Neville è l''ultimo uomo sulla Terra. L''ultimo umano sopravvissuto, in un mondo completamente popolato da vampiri. Nella solitudine che lo circonda, Robert esegue la sua missione, studia il fenomeno e le superstizioni che lo circondano, cerca nuove strade per lo sterminio delle creature delle tenebre. Durante la notte Neville se ne sta rintanato nella sua roccaforte, assediato dai morti viventi avidi del suo sangue. Ma con il sorgere del sole è lui a dominare un gioco crudele e di meccanica ferocia, scandito dalle luci e dalle ombre di un tempo sempre uguale a se stesso', 0, 'copertina087.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (88, 'NEO la caduta del sole di ferro', 0, 'Una catastrofe ambientale ha spopolato il mondo. A Parigi gli unici sopravvissuti sono due gruppi di dodicenni, i ragazzi del tepee e i ragazzi del castello. Cresciuti senza genitori e senza l''assistenza di nessun adulto, i ragazzi del tepee sono una tribù abbastanza selvaggia che vive nella torre Eiffel. Anche i ragazzi del castello (il Louvre) sono cresciuti senza adulti, ma fin dalla loro nascita si sono ritrovati inseriti in un sistema di apprendimento che ha consentito loro di sviluppare un''organizzazione di vita diametralmente opposta. I due gruppi, pur sapendo dell''esistenza l''uno dell''altro, non sono mai venuti in contatto. A cambiare quello stato di tregua prolungata interviene uno strano avvelenamento dell''ambiente che comincia a sterminare uccelli e piccoli mammiferi. I ragazzi del tepee sono convinti che a diffondere il veleno siano quelli del castello. La guerra sembra inevitabile DISTOPICO-PARIGI-ADULTI SCOMPARSI-BAMBINI-TRIBU’-DIFFIDENZA-GUERRA O COLLABORAZIONE?', 1, 'copertina088.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (89, 'Eleanor Oliphant sta benissimo', 0, 'Mi chiamo Eleanor Oliphant e sto bene, anzi: sto benissimo. Non bado agli altri. So che spesso mi fissano, sussurrano, girano la testa quando passo. Forse è perché io dico sempre quello che penso. Ma io sorrido. Ho quasi trent''anni e da nove lavoro nello stesso ufficio. In pausa pranzo faccio le parole crociate. Poi torno a casa e mi prendo cura di Polly, la mia piantina: lei ha bisogno di me, e io non ho bisogno di nient''altro. Perché da sola sto bene. Solo il mercoledì mi inquieta, perché è il giorno in cui arriva la telefonata di mia madre. Dopo averla sentita, mi accorgo di sfiorare la cicatrice che ho sul volto e ogni cosa mi sembra diversa. Ma non dura molto, perché io non lo permetto. E se me lo chiedete, infatti, io sto bene.  O così credevo, fino a oggi. Perché oggi è successa una cosa nuova. Qualcuno mi ha rivolto un gesto gentile. Il primo della mia vita…', 1, 'copertina089.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (90, 'I custodi di Slade house', 0, 'Voltato l''angolo di una via di Londra, proprio dove occhieggiano le vetrine di un popolare pub inglese, lungo il muro di mattoni che costeggia un vicolo strettissimo, se tutto gira per il verso giusto, troverete l''ingresso di Slade House. Un perfetto sconosciuto vi accoglierà chiamandovi per nome e vi inviterà a entrare. La vostra prima reazione sarà la fuga. Ma presto vi accorgerete che allontanarsi è impossibile. Ogni nove anni, l''ultimo sabato di ottobre, gli abitanti della casa - una sinistra coppia di gemelli - estendono il loro particolare invito a una persona speciale, sola o semplicemente diversa. Ma che cosa succede, veramente, dentro Slade House? Per chi ha varcato la soglia, scoprirlo è questione di un attimo. Ed è già troppo tardi…', 0, 'copertina090.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (91, 'Il mistero del London Eye', 0, 'Ted Spark non sente un gran bisogno di diventare normale, però ha capito che esiste una cosa che (agli occhi della gente) lo avvicina a quella condizione: dire bugie. Lui che in 12 anni non ha mai mentito, adesso, è costretto a dirne tre in due soli giorni per salvare l''indagine parallela condotta insieme a sua sorella Kat alla ricerca del cugino Salim. Salim è sparito, facendo un giro sullagigantesca ruota panoramica di Londra. Un giallo avvincente, la storia di un ragazzo inglese nel cui cervello gira un sistema operativo diverso da quello delle altre persone. La voce narrante del libro è proprio quella di Ted, affetto da sindrome di Asperger, una forma di autismo', 0, 'copertina091.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (92, 'Il riscatto di Dond', 0, 'Su di un menhir posto sul margine esterno della ripida scogliera di Inniscaul, è inciso il destino di un intero popolo. Gli abitanti dell’isola, in cambio di 13 anni di buona sorte, dovranno sacrificare a Dond, Dio degli inferi, un tredicesimo figlio al compimento del tredicesimo anno di vita. Nel villaggio le donne non partoriscono più di dodici figli ma, in maniera del tutto inattesa l’ultimo parto di Meb è gemellare… e il destino infausto sta per compiersi. Darra, la tredicesima nata, sembra andare incontro ad un destino già segnato. Un mondo dove i pregiudizi di genere e la superstizione alimentano la violenza e la cupidigia degli uomini, e che solo la verità e il bacio di una madre riusciranno a liberare.', 0, 'copertina092.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (93, 'Fiore di neve e il ventaglio segreto', 0, 'Ottuagenaria e tormentata dai rimorsi, Giglio Bianco ripensa al proprio passato e a Fiore di Neve, l''amica, scomparsa ormai da molti anni, che ha avuto un ruolo cruciale nella sua esistenza. Ha inizio così una vicenda di ambientata nella Cina del XIX secolo, quando mogli e figlie ancora avevano i piedi bendati e vivevano in uno stato di isolamento pressoché totale. Allora le donne di una remota contea dello Hunan ricorrevano a un codice segreto per comunicare tra loro: il nu shu, e le bambine venivano talora accoppiate come laotong, «vecchie se stesse», in un vincolo di affetti destinato a durare per sempre. Si scambiavano lettere tracciate a pennello sui ventagli o messaggi ricamati sui fazzoletti, e inventavano racconti, sfuggendo così alla propria reclusione per condividere speranze, sogni e conquiste.', 1, 'copertina093.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (94, 'Aggiustare l’universo', 0, 'Ottobre 1945. L''anno scolastico inizia in ritardo. È il primo dell''Italia liberata e non è semplice ripartire dalle macerie. La maestra Gilla è arrivata a Borgo di Dentro per sfuggire alle bombe che martoriavano la sua Genova, e come tanti giovani ha combattuto e ha rischiato la vita. Ma ora non vuole pensare a quello che la guerra le ha tolto, e le ventitré allieve di quinta elementare che ha di fronte sono una ragione sufficiente per tenere a bada la tristezza. Al suono della campanella è rimasto un posto vuoto, in prima fila. La bambina a cui è destinato raggiunge la classe poco dopo: si chiama Francesca e arriva dal vicino orfanotrofio. È preparata, diligente, ma non parla. Gilla nei suoi occhi riconosce subito la tristezza di chi si trova solo in un mondo cui non appartiene…', 0, 'copertina094.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (95, 'Sotto un sole diverso', 0, 'Bolzano, fine degli anni Trenta. Con l’avvento del fascismo la popolazione di lingua tedesca del Sudtirolo subisce continui tentativi di italianizzazione forzata. Le scuole di lingua tedesca vengono soppresse, la stampa germanofona viene censurata, i nomi e i cognomi delle persone italianizzati. I Mumelter, antica famiglia bolzanina orgogliosamente tirolese, vive uno dei momenti più difficili della propria storia, sentendosi privata delle radici e dell’identità. L’ultranovantenne Mumelter vede in Hitler l’unica speranza e si augura che la Germania nazista faccia per i sudtirolesi ciò che sta facendo per i Sudeti, la minoranza di lingua tedesca in Cecoslovacchia. Ma lo aspetta un’amara delusione. L’accordo tra Mussolini e Hitler non prevede scampo: o l’italianizzazione forzata o il rimpatrio nei territori del Reich. Per gli elementi più scomodi, come i Mumelter, non c’è alternativa: il destino è l’esilio.', 0, 'copertina095.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (96, 'La cacciatrice', 0, 'La chiamano die Jägerin, «la Cacciatrice», la più spietata assassina del Reich. Nina, soldato speciale dell''esercito sovietico, è riuscita a sfuggirle e, ora che la guerra è finita, la Cacciatrice è diventata preda … Non è stato facile per Jordan accettare che suo padre si risposasse con una vedova di guerra, sbarcata negli Stati Uniti dalla Germania senza denaro né documenti. Anneliese è dolce e affascinante, ma  potrebbe non essere affatto chi dice di essere. Jordan comincia ad avere dei sospetti e, nel momento in cui viene contattata da un gruppo di cacciatori di nazisti, da anni alla ricerca della famigerata Jägerin, capisce di non poter continuare a vivere tormentata dai dubbi.', 1, 'copertina096.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (97, 'A fuoco lento', 0, 'Argentina, 1950. Dopo essere stato vittima di uno scambio di persona, Bernie Gunther si vede costretto a scappare a Buenos Aires fingendosi un criminale di guerra nazista. Quando viene accolto da Perón in persona e dalla moglie Evita svela loro la sua vera identità e scopre che la sua reputazione di detective lo precede. Così, il colonnello Montalban, braccio destro della coppia, gli affida subito un mistero da risolvere: una giovane ragazza è stata uccisa in circostanze raccapriccianti, con modalità che ricordano fortemente l’ultimo caso affrontato da Bernie quando era ancora un detective della omicidi a Berlino, negli anni Trenta. Troppe le somiglianze per non pensare a quella vecchia storia. Quello, però, era un caso che non era riuscito a risolvere. Montalban è convinto che l’assassino si nasconda in mezzo alle migliaia di ex nazisti giunti in Argentina a partire dal 1945. E quindi chi meglio di Bernie Gunther può catturarlo?', 0, 'copertina097.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (98, 'Le rive della collera', 0, 'Marzo 1967. Marie-Pierre Ladouceur vive a Diego Garcia, nelle isole Chagos, un arcipelago annesso alle Mauritius, fino a quel momento colonia britannica. Va a piedi nudi, libera e senza freni. Incontra Gabriel, un mauriziano che è venuto ad assistere l’amministratore coloniale. Un uomo di città. Un’eleganza incredibile. Nell’arco di pochi mesi, Mauritius diventa indipendente dopo centocinquantotto anni di dominazione britannica, ma le isole Chagos restano alla Gran Bretagna. A poco a poco, la vita quotidiana cambia e il buio avanza, fino al giorno in cui i soldati convocano gli abitanti dell’isola sulla spiaggia. Hanno solo un’ora per abbandonare la loro terra, i loro animali, le loro case, i loro legami. E per quale motivo? Per andare dove? Dopo lo strazio arriva la rabbia, e con essa la rivolta. Presto, arriverà anche il tempo della giustizia', 0, 'copertina098.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (99, 'La monaca', 0, 'Messina, 15 agosto 1839. In casa del maresciallo Peppino Padellani di Opiri, fervono i preparativi per la festa dell''Assunzione della Vergine. È l''ultimo giorno sereno nella vita di Agata, innamorata del ricco Giacomo Lepre e da lui ricambiata. Agata deve rinunciare al suo amore: le famiglie non trovano un accordo e, alla morte del maresciallo, la madre di Agata, donna Gesuela, decide di portarla a Napoli, dove spera di ottenere una pensione dal re. L''unico piroscafo in partenza è quello del capitano James Garson. Dopo un tempestoso viaggio, James e Agata si ritrovano sul ponte e qui lei gli confida i propri tormenti. A Napoli, Agata viene forzata a entrare in convento.', 1, 'copertina099.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (100, 'La vergine napoletana', 0, 'Due cavalieri, uno bianco e uno nero, partono alla ricerca dell''ultimo discendente di Federico II. In un paese dilaniato dalle guerre tra fazioni e piegato dalla carestia, il modenese Giovanni Vezzani e il saraceno Yusuf Ibn Gwasi vogliono rilanciare l''utopia del grande imperatore svevo. Inseguono l''esile filo d''una leggenda: perché prima di salire al patibolo, il giovane Corradino di Svevia, nipote di Federico, avrebbe sposato una vergine napoletana che gli avrebbe dato un figlio... Inizia così un susseguirsi di imprevedibili avventure, da Lucera, splendida città-giardino araba, alle brumose campagne padane, dalla rocca di Castel del Monte nelle Murge alla Toscana', 0, 'copertina100.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (101, 'The Help', 0, 'Estate 1962. Eugenia "Skeeter" Phelan torna a vivere in famiglia a Jackson, Mississippi, dopo l’università. Sua madre desidera per lei solo un buon matrimonio, ma la ragazza ha in mente altro: diventare scrittrice. Il suo sogno si intreccia con quello di due domestiche di colore, la saggia e materna Aibileen e Minny, cuoca formidabile quanto sfacciata. Le tre donne si trovano a lavorare insieme a un progetto segreto, per costruire un mondo migliore.', 1, 'copertina101.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (102, 'La canzone di Achille', 0, 'Dimenticate Troia, gli scenari di guerra, i duelli, il sangue, la morte. Dimenticate la violenza e le stragi, la crudeltà e l''orrore. E seguite invece il cammino di due giovani, prima amici, poi amanti e infine anche compagni d''armi – due giovani splendidi per gioventù e bellezza, destinati a concludere la loro vita sulla pianura troiana e a rimanere uniti per sempre con le ceneri mischiate in una sola, preziosissima urna.', 1, 'copertina102.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (103, 'Il gigante sepolto', 0, 'Il leggendario re Artù è morto ormai da qualche tempo ma la pace che egli ha imposto sulla futura Inghilterra, dilaniata per decenni dalla guerra intestina fra sassoni e britanni, seppure incerta, perdura. Nella dimora buia e angusta di Axl e Beatrice, tuttavia, non vi è pace possibile. La coppia di anziani coniugi britanni è afflitta da un arcano tormento: una sorta di inspiegabile amnesia che priva i due di una storia condivisa. A causarla pare essere una strana nebbia dilagante che, villaggio dopo villaggio, avvolge indistintamente tutte le popolazioni, ammorbandole con i suoi miasmi. Axl e Beatrice ricordano di aver avuto un figlio, ma non sanno più dove si trovi, né che cosa li abbia separati da lui. Non possono indugiare oltre: a dispetto della vecchiaia e dei pericoli devono mettersi in viaggio e scoprire l''origine della nebbia incantata, prima che la memoria di ciò a cui più tengono sia perduta per sempre', 1, 'copertina103.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (104, 'Piccoli atti di misericordia', 0, 'Boston, estate 1974. Per contrastare le discriminazioni e l''odio fra le etnie, le autorità impongono a molti ragazzi delle scuole frequentate dagli afroamericani di trasferirsi nelle scuole dei bianchi e viceversa, alimentando tensioni e proteste.  Mary Pat Fennessy, 42 anni passati fra le case popolari dell''enclave irlandese-americana di Southie, ha perso il primo marito giovanissima, e poi un figlio per overdose. Ora le resta solo l''adorata figlia Jules, un fiore di diciassette anni. Ma una notte, dopo un''uscita con gli amici, Jules non rientra a casa. Quella stessa notte, un ragazzo nero viene trovato morto sulla banchina della metropolitana del loro quartiere. Cosa ci  faceva all''alba in una zona di bianchi? E soprattutto, perché nessuno sa dov''è Jules? I due eventi hanno forse un legame?', 0, 'copertina104.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (105, 'Terra crudele', 0, 'Utah, 1888. Sul fondo di un canyon inospitale, circondata da rocce scoscese, sorge la città di Junction. Lì da quattordici giorni Deborah Taylor, di famiglia mormone, aspetta con impazienza il ritorno di suo marito Samuel. Un gelido pomeriggio di gennaio, tuttavia, qualcuno bussa con insistenza alla sua porta. L''uomo che compare oltre l''uscio dice di essere un fratello, un mormone in fuga dalla legge e bisognoso di riparo. Ma quell''uomo ha qualcosa di diverso dagli altri che Deborah e il marito hanno accolto in precedenza, perseguitati solo per il fatto di essere, come molti mormoni, poligami. Chi è, dunque, quel fuggiasco? Che cosa può aver commesso di tanto grave? E, soprattutto, che cosa può fare Deborah per salvare sé stessa e l''intera Junction dall''accusa di complicità?  AMERICA FINE ‘800-COMUNITÀ MORMONA-CACCIA ALL’UOMO-NATURA INOSPITALE', 0, 'copertina105.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (106, 'Longbourn house', 0, 'Ispirato al non detto di "Orgoglio e pregiudizio", "Longbourn House" ricostruisce con tono brioso la vita della servitù nell''Inghilterra di inizio Ottocento, facendo emergere tra le righe la fatica e le disuguaglianze su cui si reggeva il bel mondo. All''interno di questo affresco storico, che oltre alla campagna dell''Hertfordshire include la Spagna sconvolta dalle guerre napoleoniche e i porti commerciali sull''altra sponda dell''Atlantico, Jo Baker dona pensieri ed emozioni autentici alle ombre che nel celebre romanzo di Jane Austen si limitavano a passare sullo sfondo rapide e silenziose. INGHILTERRA DELL’800-VITA DELLA SERVITU’', 1, 'copertina106.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (107, 'Il viaggio della strega bambina', 0, '"L''hanno rinchiusa in prigione per più di una settimana. Prima l''hanno fatta camminare a passo di marcia, su e giù, su e giù in mezzo a loro, per un giorno e una notte, finché non è più riuscita nemmeno a zoppicare, tanto aveva i piedi gonfi e sanguinanti. Non avrebbe confessato. Così hanno deciso di dimostrare che era una strega". Le pagine di un diario sono cucite dentro una trapunta. Una trapunta che giace indisturbata per oltre trecento anni, finché non viene aperta per essere pulita, e allora dalle sue pieghe cade una storia forte ed emozionante. La storia di Mary, nipote di una strega. Quando la nonna di Mary viene condannata a morte per stregoneria, Mary scappa per sfuggire allo stesso destino, prima nella campagna inglese e poi su una nave per l''America, dove spera di trovare una nuova casa, un luogo dove essere una persona nuova. Scopre però che non è facile fuggire e presto cade vittima di superstizioni…', 1, 'copertina107.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (108, 'Pirate', 0, '1725. Nancy è la bella e giovane figlia di un ricco mercante inglese. L''improvvisa morte del padre la mette di fronte a quello che il genitore aveva pianificato per lei: sposare un ricco proprietario terriero in Jamaica. Nancy raggiunge la splendida isola caraibica e se ne innamora, ma non può fare a meno di soffrire per la povertà che vi regna e di provare ribrezzo per il futuro sposo. Per salvare la sua schiava personale da una violenza uccide un bianco e si vede costretta a fuggire: unica possibilità di salvezza, una nave di corsari... Ambientata agli inizi del Settecento, una storia tutta colpi di scena, un romanzo d''avventura e d''evasione che ha per protagoniste due ragazze "corsare per caso"', 0, 'copertina108.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (109, 'Il braccialetto', 0, 'Corrado, quindicenne, ha partecipato all''abbattimento dei busti di Mussolini e dei fasci littori la notte del venticinque luglio. È ebreo e si aspetta che il nuovo governo abolisca le leggi razziali. È sicuro che il prossimo anno scolastico potrà frequentare in mezzo agli altri il mitico liceo Visconti, ma i giorni passano senza che nulla cambi, anzi... Leandro abita in una grande e vecchia casa piena di ombre e misteri con un''anziana parente russa e, fin dal primo momento in cui ha incontrato Corrado in un cinema, cerca spasmodicamente di fare amicizia con lui. Per Corrado il braccialetto a cerchi d''oro di sua madre è il simbolo di un passato benessere sociale, di un tempo in cui vedeva la madre giovane, vitale e combattiva. Nel momento in cui le famiglie ebree raccolgono l''oro a causa del ricatto tedesco, Corrado apprende che il braccialetto non c''è più. I suoi l''hanno venduto senza neanche dirglielo. Ma la verità non è quello che sembra.', 1, 'copertina109.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (110, 'I figli del lupo', 0, 'Berlino, luglio 1945. Il Terzo Reich è appena caduto, i russi occupano la città e non risparmiano nessuno. Berlino è in macerie: non c''è cibo, non c''è acqua, per le strade regna l''anarchia. Una banda di ragazzi senza genitori ha trovato rifugio nei sotterranei di un ospedale e cerca di sopravvivere in quell''inferno. Otto ed Helene, i più grandi del gruppo, fanno di tutto per procurare il cibo ai più piccoli e proteggerli. Come se non bastasse, Otto fatica a tenere sotto controllo il fratello minore, Ulrich, che resta fedele agli ideali nazisti e sogna di unirsi a uno dei gruppi della Hitlerjugend che si dice facciano parte di un''organizzazione chiamata Werwolf e combattano gli Alleati con la guerriglia…', 0, 'copertina110.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (111, 'Olympia indagine ai giochi ellenici', 0, 'Grecia, anno 41 dopo Cristo. Il senatore Publio Aurelio Stazio giunge a Olympia per presentare i puledri della sua amica Pomponia ai Giochi atletici più celebri del mondo. Le gare, però, vengono subito funestate da una serie di lutti: un tifoso accoltellato, un pentatleta sgozzato da un disco tagliente, un velocista trafitto da un giavellotto. Ad essere accusato dei due delitti commessi usando attrezzi da competizione è il discobolo di Corinto, Pirro, che tuttavia si rende subito irreperibile. Per nulla convinto della sua colpevolezza, Publio Aurelio comincia a indagare su altri possibili sospetti.', 0, 'copertina111.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (112, 'Più veloce del vento', 0, 'Non correre. Non gridare. Non volere. Copri le gambe, stai composta, e piantala di fantasticare, perché nella vita ci sono sogni che non puoi sognare. Queste le cinghie che stringono il cuore di Alfonsina, figlia di contadini e di un tempo che non ha scelto. Un tempo in cui il ciclismo è per uomini coraggiosi, impavidi eroi tutti maschi. Finché, a cavallo di una bicicletta scassata, Alfonsina arriva e corre. Corre veloce, più veloce, vola. Non è facile, perché il ciclismo è uno sport di forza e fatica, e come tutti le ripetono fino alla nausea, "non è per signorine". Ma Alfonsina Strada è come il vento, che non conosce leggi né limiti e corre finché ha forza, finché le gambe reggono, finché c''è un orizzonte da raggiungere e superare', 0, 'copertina112.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (113, 'L’ultimo arrivato', 0, 'Affidato a un compaesano, Ninetto detto Pelleossa si lascia alle spalle la Sicilia e, la valigia carica di pacchi di sale, parte verso il Nord. Con timida meraviglia, va alla scoperta di una Milano in pieno boom economico, dove impara il ritmo del lavoro e a distinguere tra amici veri e falsi. E se con gli anni arriveranno prove difficili da affrontare, è nella forza del racconto che Ninetto troverà un riscatto alla sua storia. ', 1, 'copertina113.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (114, 'Timeline', 0, 'Nel deserto dell''Arizona un uomo vaga senza meta, pronunciando parole prive di senso. Dopo ventiquattr''ore è morto e il suo corpo viene cremato dalle uniche persone che sembrano conoscerlo. All''altro capo del mondo una squadra di archeologi è al lavoro sulle rovine di un villaggio medievale della Dordogna, dove scopre una stanza rimasta sigillata per oltre seicento anni. Ma nel quartier generale della società finanziatrice del progetto gli studiosi faranno una scoperta ancora più sorprendente: il capo della misteriosa multinazionale ha inventato una vera macchina del tempo, che nello spericolato tentativo di ritrovare il professor Johnson, il capo della spedizione precipitato in un tunnel spaziotemporale, li proietterà in uno dei periodi più avventurosi e violenti della storia. Da quel momento i nostri eroi dovranno riuscire a sopravvivere nel bel mezzo della guerra dei Cent''Anni', 1, 'copertina114.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (115, 'Aristotele detective', 0, 'Senza Aristotele niente Sherlock Holmes. È questa, verosimilmente, l''idea alla base di questo giallo investigativo. Il metodo del tipo di detective alla Sherlock Holmes non sarebbe stato possibile se non applicando il metodo dimostrativo della logica aristotelica al crimine. Stefanos, un simpatico giovanotto dell''Atene del IV secolo, dunque, guidato dallo Stagirita che non si muove di casa come Nero Wolfe, indaga sull''assassinio di un ricco oligarca, di cui è accusato ingiustamente il cugino, esule per un precedente errore. Al primo omicidio, ne segue un secondo, e tra colpi di scena, travestimenti, testimonianze reperite avventurosamente, Aristotele alla fine scioglie l''enigma e consente al giovane di smascherare il vero assassino', 1, 'copertina115.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (116, 'Aristotele e l favola dei 2 corvi bianchi', 0, 'Questo nuovo caso per Aristotele detective ha inizio mentre il filosofo è occupato a discutere con gli allievi del Liceo la funzione del denaro. La strada migliore per raggiungere la felicità, sostiene un giovane viziato. Ma il vecchio Stagirita non è d''accordo e per illustrare la propria visione economica, nel quadro della più vasta teoria della polis, sceglie una parabola (un''abitudine, come osserva ironico uno dei discepoli, platonica più che aristotelica): la favola dei due corvi bianchi. Il filosofo ha appena iniziato a raccontare che arriva un uomo trafelato. E Caronide, un vedovo, una volta possidente, che ha ceduto terreni e schiavi per ridursi a vivere su uno stentato podere accudendo le capre. Costui chiede ad Aristotele di indagare sulle macchinazioni del cugino, il ricco Simmaco, che vorrebbe impadronirsi delle ultime sue risorse', 0, 'copertina116.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (117, 'L’ospite', 0, '"Guardai Jared negli occhi e provai la più strana delle sensazioni. Lo desideravo con la stessa intensità disperata che avevo sentito vedendolo la prima volta. Il nostro corpo non apparteneva né a me né a Melanie: apparteneva a lui." Due anime e un solo corpo: è così che Melanie e Wanda si conoscono. Una è l''ospite terrestre, l''altra è lo spirito alieno, entrambe sono pedine in una furiosa guerra per il possesso del pianeta. Dovrebbero odiarsi, ostacolarsi, tentare di distruggersi a vicenda, ma avviene qualcosa che le fredde intelligenze degli extraterrestri non hanno previsto: l''appassionata Mei e la tenace Wanda dividono pensieri, emozioni e sentimenti, fino a che l''amore travolge anche l''anima impassibile dell''aliena. Contro ogni regola, contro ogni istinto, contro tutti, Wanda accetta di aiutare la sua ospite e si mette in viaggio, decisa a ritrovare il ragazzo che ha acceso in entrambe un amore tanto intenso e sconvolgente', 1, 'copertina117.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (118, 'Dormire in un mare di stelle', 0, 'È l’ultima missione nello spazio per la scienziata Kira Navárez. Semplici rilievi di routine su un pianeta non ancora colonizzato. Ma il giorno della partenza accade qualcosa di inatteso. Qualcosa di terribile. Spinta dalla curiosità, Kira si imbatte in un reperto alieno. Il terrore la invade quando il pulviscolo intorno a lei comincia a muoversi. Una guerra tra le stelle è alle porte, e Kira è trascinata nelle profondità della galassia in un''odissea di scoperte e trasformazioni. Lei ha dalla sua compagni formidabili e un coraggio immenso. Ma soltanto fidandosi davvero di se stessa potrà combattere per i propri simili e affrontare il suo prodigioso destino', 0, 'copertina118.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (119, 'Blackwater v.1 La piena', 0, '1919. Le acque nere e minacciose del fiume sommergono la cittadina di Perdido, Alabama. Come gli altri abitanti, i ricchissimi Caskey, proprietari di boschi e segherie, devono fronteggiare il disastro provocato dalla furia degli elementi. Ma il clan, capeggiato dalla potente matriarca Mary-Love e dal figlio devoto Oscar, dovrà anche fare i conti con un’apparizione sconvolgente. Dalle viscere della città sommersa compare Elinor, donna dai capelli di rame con un passato misterioso e un oscuro disegno: insinuarsi nel cuore dei Caskey', 0, 'copertina119.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (120, 'La canzone di Orfeo', 0, 'Claire adora la sua amica Ella. Sono inseparabili da quando giocavano insieme da piccole e da allora Claire protegge la sua dolce, svagata bellezza. Ora condividono con i loro amici i sogni di libertà e invincibilità che solo a diciassette anni si possono avere. Durante una gita sulle spiagge del Northumberland, Claire e i suoi amici sfidano la notte alle fiamme di un falò, dormono nelle tende e si risvegliano al canto di uno sconosciuto, comparso dal nulla. Il suo nome è Orpheus: chi lo ascolta si perde nella sua musica, rapito da un incanto antico e nuovissimo. Ed Ella ne sarà rapita più di tutti, così tanto che Claire non sa se esserne felice o preoccupata. Ma Ella e Orpheus non possono sfuggire al loro amore, è come se lo aspettassero da sempre', 1, 'copertina120.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (121, 'Dark web', 0, 'Vesna è un nome falso. Il nome scelto da Eva, 14 anni, per diventare una influencer da milioni di like. Doom Lad è il nickname di lui: significa "ragazzo del destino". Ma lui non è ciò che dice di essere e il web è una ragnatela in cui cadono le ragazzine. Le loro immagini rubate viaggiano nel buio della rete. Giovanniboccaccio è il nome d''arte di un ispettore infiltrato nel dark web che cerca di salvare minorenni intrappolate nella ragnatela. Eva non sospetta nulla di quello che c''è dietro i messaggi, le chat e le immagini che scambia con Doom Lad. Prima le foto, poi i video e infine un appuntamento in hotel. E lì si ritrova sola quasi sul baratro. Eva parla con un unico amico, compagno di scuola perseguitato dai bulli. Lui le vuole bene e vorrebbe proteggerla, ma è confuso e forse anche un po'' ingenuo. Intanto l''ispettore serra sempre di più le maglie intorno al giro losco della rete.', 0, 'copertina121.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (122, 'Mosquitoland', 0, 'All''indomani dell''inaspettato sfasciarsi della sua famiglia, Mim viene trascinata via dalla cittadina in cui è nata e costretta a trasferirsi dal padre e dalla sua nuova, freschissima moglie, lontano mille chilometri. Prima ancora però che la polvere abbia il tempo di posarsi, Mim scopre che la madre, rimasta a Cleveland, è ricoverata in ospedale, e riempito in fretta uno zaino, scappa di casa e salta su un autobus per correre in soccorso dell''unica persona che abbia mai capito - e adorato - i suoi tanti bordi affilati. È l''inizio di una strana, imprevista odissea, che porterà Mim a sedersi accanto a compagni di viaggio diversi, alcuni luminosi, altri molto, molto oscuri. E attraverso di loro, come in uno specchio Mim ripercorrerà gli ultimi anni, le malinconie che li hanno accompagnati, e i demoni segreti di cui è rimasta imprigionata. Per finalmente affrontare la verità che ha sempre avuto sotto gli occhi, e non ha mai voluto vedere', 0, 'copertina122.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (123, 'Tutte le bugie che ho detto', 0, '1947. La guerra è finita. Il futuro potrà soltanto essere meraviglioso. Evie, quindici anni, un''inconsapevole bellezza in boccio, vuole corrergli incontro a braccia aperte. Nella vacanza fuori stagione sotto il sole della Florida sembra che tutto sia a portata di mano, anche l''amore, nelle sembianze di Peter, ex soldato di modi eleganti e seducenti. Ma Evie non vede e non sa troppe cose. Un pesante segreto che il patrigno ha riportato a casa dall''Europa e le contraddizioni di una madre affascinante e torbida come una diva del cinema la trascinano verso la bugia peggiore di tutta la sua vita. Una storia d''amore e di crescita, un noir in cui smarrirsi: perché noi, i lettori, capiamo cose che Evie non riesce a comprendere, e la guardiamo impotenti mentre rischia di perdersi e solo alla fine, crescendo tutto d''un tratto, dolorosamente si ritrova', 0, 'copertina123.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (124, 'Colpa delle stelle', 0, 'Hazel ha sedici anni, ma ha già alle spalle un vero miracolo: grazie a un farmaco sperimentale, la malattia che anni prima le hanno diagnosticato è ora in regressione. Ha però anche imparato che i miracoli si pagano: mentre lei rimbalzava tra corse in ospedale e lunghe degenze, il mondo correva veloce, lasciandola indietro, sola e fuori sincrono rispetto alle sue coetanee, con una vita in frantumi in cui i pezzi non si incastrano più. Un giorno però il destino le fa incontrare Augustus, affascinante compagno di sventure che la travolge con la sua fame di vita, di passioni, di risate, e le dimostra che il mondo non si è fermato, insieme possono riacciuffarlo. Ma come un peccato originale, come una colpa scritta nelle stelle avverse sotto cui Hazel e Augustus sono nati, il tempo che hanno a disposizione è un miracolo, e in quanto tale andrà pagato', 1, 'copertina124.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (125, 'Teorema Catherine', 0, 'Da quando ha l''età per essere attratto da una ragazza, Colin, ex bambino prodigio, forse genio matematico forse no, fissato con gli anagrammi, è uscito con diciannove Catherine. E tutte l''hanno piantato. Così decide di inventare un teorema che preveda l''esito di qualunque relazione amorosa. E gli eviti, se possibile, di farsi spezzare il cuore un''altra volta. Tutto questo nel corso di un''estate gloriosa, passata con l''amico Hassan, a scoprire posti nuovi, persone bizzarre di tutte le età, ragazze speciali che hanno il gran pregio di non chiamarsi Catherine', 1, 'copertina125.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (126, 'La legione scomparsa', 0, 'Nel 117 d.C, quattromila legionari della Nona legione marciarono nella nebbia per sedare una rivolta dei Britanni oltre il Vallo di Adriano e nessuno fece più ritorno. Anche l''Aquila, il simbolo di quella legione, svanì nel nulla insieme ai suoi soldati. Il giovane centurione Marco, però, vuole ritrovare l''Aquila e soprattutto suo padre, il comandante della legione scomparsa. La missione sembra impossibile, ma Marco non si dà per vinto e, fingendosi medico, setaccia insieme al fido Esca i territori delle tribù britanniche situate oltre il vallo, alla ricerca di tracce e indizi. Se il viaggio d''andata sarà privo di intoppi, quello di ritorno si trasformerà in un inseguimento mozzafiato tra montagne, laghi, boschi di betulle e paludi per riuscire a salvarsi la pelle e riportare a casa un tesoro che gli Epidi non hanno nessuna intenzione di lasciarsi sfuggire', 0, 'copertina126.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (127, 'Un anno terribile', 0, 'Figlio di immigrati, Dominic ha un grande talento, quasi da cartone animato: il suo braccio. Lo cura, lo allena, lo protegge dai rigori invernali con tubetti e tubetti di balsamo Sloan, sa che grazie a lui, soltanto grazie a lui, potrà riscattare se stesso e la sua famiglia dalla condizione di inferiorità che stanno vivendo, diventando «Dom Molise, il più grande Mancino della Major League». «L’anno terribile, il 1933, non è legato ad alcun fatto storico. È un anno come un altro tranne che per Dominic, il protagonista. È terribile perché segna il momento in cui il giovane prende coscienza che nella sua vita non c’è alternativa alla fuga.»', 1, 'copertina127.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (128, 'Io Emanuela', 0, 'Emanuela Loi non ha neanche vent''anni quando sua sorella la convince a tentare il concorso per entrare in polizia. È un percorso che la fa crescere in fretta, lontano dalla sua terra, dai suoi affetti, soprattutto quando, a Palermo, viene assegnata al servizio scorte Di Paolo Borsellino. Sono anni bui per la città, che è sede del maxiprocesso contro Cosa Nostra e bersaglio facile della mafia, che colpisce chi, la mafia, cerca di combatterla. Emanuela ha paura, ma il suo senso del dovere, che da sempre la accompagna, non la fa desistere. Fino alla fine', 0, 'copertina128.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (129, 'Agata e la pietra nera', 0, 'Owen e Natalie non si sono mai parlati. Si incontrano per caso sull''autobus che li riporta a casa da scuola. Owen ha diciassette anni e fino a quel momento non è mai riuscito a comunicare davvero né con i suoi coetanei né con i genitori. Detesta il gruppo dei ragazzi, ma in primo luogo detesta se stesso. Per lui Natalie rappresenta un punto di svolta non programmato, in positivo. Lei è più grande e sogna di diventare compositrice. Tra i due ragazzi nasce un legame speciale, che matura nel corso dei mesi, fino all''apice, così coinvolgente e gratificante che loro stessi faticano a definirlo. E allora, nel momento in cui ciascuno prova a dare un nome preciso ai sentimenti, che il gioco del conoscersi si arresta', 0, 'copertina129.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (130, 'Zio vampiro', 0, 'Carolyn, 16 anni, e la sua gemella Gioia, hanno un terribile segreto: loro zio Toddy è un vampiro. Carolyn vorrebbe raccontare la verità a qualcuno, ma teme che nessuno l''ascolterà. Solo suo fratello forse sarebbe pronto a crederle, però ultimamente è strano, è sempre più pallido... Una voce spiazzante e indimenticabile traduce in un racconto di fantasia l''orrore di un''esperienza vissuta e fa davvero desiderare che sia tutto il frutto dell''immaginazione troppo vivida', 0, 'copertina130.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (131, 'I segreti di Sunnylakes', 0, 'È un placido pomeriggio dell''estate del 1959 a Sunnylakes, California. Sotto un sole caldo, tra le villette a schiera, le limpide piscine e i giardini curati, sembra impossibile che possa accadere qualcosa di brutto. Eppure non è così. Quando Ruby arriva a casa degli Haney, una delle ricche famiglie bianche presso cui lavora come domestica per qualche dollaro l''ora, si accorge subito che qualcosa non va. La casa è vuota e silenziosa, se non per il pianto di una delle bambine, abbandonata nella culla. L''altra figlia, invece, è sola in giardino: qualcuno le ha detto di aspettare fuori. Aprendo la porta della cucina, Ruby si sente svenire: una grossa macchia di sangue occupa il pavimento della stanza, altrimenti immacolata. E della padrona di casa, Joyce Haney, non c''è traccia. Ruby viene arrestata e portata in cella. D''altronde, una domestica nera non può che essere la prima sospettata.', 1, 'copertina131.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (132, 'La figlia del mercante di seta', 0, 'Nella Londra del Diciassettesimo secolo, Coriander Hobie ha ragione di credere nella felicità. La sua infanzia trascorre radiosa, protetta dal padre Thomas, un mercante di seta, e dalla madre Eleanor, donna sapiente e gentile, profondamente esperta di erbe medicamentose. Niente sembra poter turbare quella pace; ma all''improvviso, quasi inspiegabilmente, Eleanor Hobie muore, e oltre al terribile dolore di quella perdita Coriander si trova a dover affrontare un''amara realtà: la monarchia inglese è caduta, i repubblicani di Cromwell hanno preso il potere, suo padre è considerato un traditore e rischia la condanna a morte. In un estremo, disperato tentativo di salvarsi e passare inosservato al nuovo regime, Thomas si risposa. Ma con la nuova moglie in casa Hobie arriva anche il flagello del sospetto, del fanatismo, della ferocia; e più pericoloso di tutti arriva il predicatore Arise Pell, violento e privo di scrupoli… STORICO-INGHILTERRA 18° SEC.-LUTTI FAMILIARI-CAMBIAMENTO-FUGA-MONDO FATATO    ', 1, 'copertina132.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (133, 'Il ragazzo del fiume', 0, 'Jess è nata per nuotare. Per lei l''acqua viene prima di tutto e tutti, ma non di suo nonno. Quando scopre che gli resta poco tempo da vivere, decide di aiutarlo a esaudire il suo ultimo desiderio: tornare nel paese della sua infanzia per portare a termine un dipinto misterioso, "Il ragazzo del fiume". Jess vuole risolvere l''enigma del dipinto e capire perché per il nonno sia tanto importante, ma un secondo mistero le occupa la mente: quello del ragazzo del fiume in carne e ossa, il cui incontro diventa anche l''inizio di una sfida che Jess dovrà vincere prima che sia troppo tardi.', 1, 'copertina133.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (134, 'Tenebre e ossa', 0, 'L''orfana Alina Starkov non ha grandi ambizioni nella vita, le basterebbe fare al meglio il suo lavoro di apprendista cartografa nell''esercito di Ravka, un tempo nazione potente e ora regno circondato dai nemici, e poter stare accanto al suo buon amico Mal, il ragazzo con cui è cresciuta e di cui è innamorata. Ma il destino ha in serbo ben altro per lei. Quando il loro reggimento attraversa la Faglia d''Ombra, la striscia di oscurità quasi impenetrabile che taglia letteralmente in due il regno di Ravka, lei e i suoi compagni vengono attaccati dagli esseri spaventosi e affamati che lì dimorano. E proprio nel momento in cui Alina si lancia in soccorso dell''amico Mal ferito gravemente, in lei si risveglia un potere enorme. Subito viene arruolata dai Grisha, l''élite di creature magiche che guida il regno. Alina, infatti, è l''unica tra loro in grado di evocare una forza talmente potente da distruggere la Faglia e riunire di nuovo il regno, dilaniato dalla guerra, riportandovi finalmente pace e prosperità.', 1, 'copertina134.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (135, 'I ribelli di giugno', 0, 'Bordeaux, giugno 1940. Marian, un piccolo ribelle di tredici anni, tra una corsa e l''altra sui tetti e qualche affare combinato facendo favori in giro, ama giocare a scacchi nei giardini della città. Un giorno, proprio di fronte a lui, la banda di teppisti di Rue Costantin si para davanti a una ragazzina e a suo fratello, impedendo loro di passare. Lei si chiama Arielle, la sua famiglia è ebrea e deve raggiungere il consolato portoghese per chiedere un visto e lasciare la Francia. Da quel momento per Marian niente sarà come prima, fino a rischiare in prima persona per fare la cosa giusta.', 0, 'copertina135.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (136, 'La strada fredda', 0, 'Una mattina Jonah si sveglia in casa da solo: i suoi genitori sono usciti per andare a comprare delle piume d''oca con cui imbottire i cuscini. Ma chi ha bisogno di piume d''oca oggigiorno? Gli stessi genitori che hanno lasciato il proprio lavoro in California e hanno trascinato Jonah a migliaia di chilometri di distanza, nello Yukon...Per ammazzare la noia, Jonah decide di partire in esplorazione nella foresta innevata. C''è un tempo da lupi, un freddo che penetra nelle ossa, ma lui è convinto di aver preso tutte le precauzioni necessarie. E inizia a seguire la pista fine come un capello nell''immensità bianca... Forse, però, il vecchio Stegner aveva ragione. Forse Jonah non sarebbe dovuto partire all''avventura con quel freddo', 0, 'copertina136.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (137, 'Addio, a domani', 0, 'Sabrina Efionayi ha due madri. Una è Gladys, la sua madre biologica, che è nata in Nigeria ed è venuta in Italia a diciannove anni per lavorare e sostenere la famiglia rimasta a Lagos; non sapeva che il suo mestiere sarebbe stato vendere il proprio corpo. L''altra è Antonietta, è napoletana, e non immaginava che un giorno Gladys avrebbe attraversato la strada tra le loro case e le avrebbe messo in braccio Sabrina, chiedendole di occuparsi di lei, di diventare sua madre. Non lo immaginava, ma quando è successo ha accettato. Da quel momento Sabrina si è ritrovata in una situazione speciale, perché i rapporti con la sua madre biologica, con le sue origini, non si sono interrotti, e cosí lei è cresciuta tra Castel Volturno e Scampia, tra Prato e Lagos, cambiando famiglia, lingua, sguardo e cultura, in costante ricerca di un centro di gravità.', 1, 'copertina137.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (138, 'Un viaggio chiamato casa', 0, 'La vita di Zoe è in panne alla fermata di Shepton, Ontario. I suoi genitori continuano a punirla per i guai che, in verità, sono causati dalla sua tirannica cugina Madi. L''unica persona in grado di capirla è la sua adorata nonna, che però è appena stata rinchiusa in un ospizio. Un mattino Zoe scopre che suo zio Teddy, che lei credeva morto, è ancora vivo da qualche parte a Toronto: scomparso dai racconti di famiglia, è ancora presente nei ricordi e nel cuore della nonna. Insieme, Zoe e sua nonna, decidono di fuggire per andarlo a cercare. Tra le insidie di un viaggio in una città sconosciuta e incontri strampalati, Zoe si scopre più forte e determinata che mai, mentre il passato della sua famiglia si rivela molto diverso da come lo immaginava...', 1, 'copertina138.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (139, 'Fangirl', 0, 'Approdata all''università, dove la sua gemella Wren vuole solo divertirsi tra party, alcool e ragazzi, la timidissima Cath si trova sola per la prima volta e si rinchiude nella sua stanza a scrivere la fanfiction di cui migliaia di sostenitori attendono il seguito. Ma una compagna di stanza scontrosa con il suo ragazzo carino che le sta sempre intorno, una professoressa di scrittura creativa che pensa che le fanfiction siano solo un plagio, e un affascinante aspirante scrittore che vuole lavorare con lei, obbligheranno Cath ad affrontare la sua nuova vita..', 1, 'copertina139.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (140, 'Pesche', 0, 'Si avvicina l’estate nel Frutteto dei Darlington e insieme vengono i braccianti stagionali, il profumo dolce dei frutti. Lì s’incontrano e si scontrano tre ragazze che all’apparenza non hanno nulla in comune. Murphy, diciassette anni vissuti in una roulotte con la madre, sconta una punizione per essere entrata di soppiatto in casa Darlington. È provocante e sfrontata. Birdie, quindici anni, è la figlia del fattore; grassottella e impacciata, ha due cagnetti come unici amici. E infine c’è Leeda, la cugina di Birdie, bellissima e algida, che si sente meno amata della sorella e ne soffre. L’estate è piena di imprevisti per il frutteto, e così per loro, che imparano a conoscersi tra acredini e gelosie, risate e confidenze. Per scoprire, infine, che si può diventare amiche pur essendo tanto diverse e che un incontro può cambiare una vita', 0, 'copertina140.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (141, 'Il castello di Otranto', 0, 'Manfredi, principe d’Otranto, ha organizzato le nozze di suo figlio Corrado con Isabella, figlia del marchese di Vicenza. Ma proprio il giorno delle nozze lo sposo muore in circostanze misteriose. Manfredi decide quindi di prenderne il posto, ma quel matrimonio illecito segnerà l’inizio di una serie di eventi soprannaturali e terrificanti. Si compirà così la maledizione che grava sulla casata d’Otranto dai tempi di un antenato usurpatore… Presentato come la traduzione di una storia italiana del tempo delle crociate, Il castello di Otranto è il primo esempio di romanzo gotico e inaugura quel gusto per un Medioevo notturno e sepolcrale, popolato di fantasmi e di eventi prodigiosi, di vendette e di antiche profezie, che influenzerà profondamente tutta la letteratura europea.', 1, 'copertina141.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (142, 'Fidanzati dell’inverno', 0, 'In un universo composto da ventuno arche, tante quanti sono i pianeti che orbitano intorno a quella che fu la Terra vive Ofelia. Originaria dell''arca "Anima", è una ragazza timida, goffa e un po'' miope ma con due doni particolari: può attraversare gli specchi e leggere il passato degli oggetti. Lavora come curatrice di un museo finché le Decane della città decidono di darla in sposa al nobile Thorn, della potente famiglia dei Draghi. Questo significa trasferirsi su un''altra arca, "Polo", molto più fredda e inospitale di Anima, abitata da bestie giganti e famiglie sempre in lotta tra loro. Ma per quale scopo è stata scelta proprio lei? Tra oggetti capricciosi, illusioni ottiche, mondi galleggianti e lotte di potere, Ofelia scoprirà di essere la chiave di un enigma da cui potrebbe dipendere il destino del suo mondo.', 1, 'copertina142.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (143, 'Sono il numero quattro', 0, 'Siamo arrivati in nove. In apparenza, siamo uguali a voi: vestiamo come voi. parliamo come voi, viviamo come voi. Ma non siamo affatto come voi. Siamo in grado di fare cose che voi non potete neanche sognare. Abbiamo poteri che voi non riuscite neanche a immaginare. Siamo più forti, più veloci e più abili di qualsiasi essere vivente del vostro pianeta. Ci siamo rifugiati sulla Terra e ci siamo divisi per prepararci: dovevamo allenarci, scoprire tutti i nostri poteri e imparare a usarli. Poi ci saremmo riuniti, tutti e nove, e saremmo stati pronti. A combatterli. Ma loro hanno scoperto che siamo qui e adesso ci stanno dando la caccia. Vogliono eliminarci, l''uno dopo l''altro. Così siamo costretti a scappare, a spostarci in continuazione, ad avere paura della nostra stessa ombra.', 0, 'copertina143.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (144, 'Ogni giorno', 0, 'Da quando è nato, A si risveglia ogni giorno in un corpo diverso. Per ventiquattr''ore abita il corpo di un suo coetaneo, che poi è costretto ad abbandonare quando il giorno finisce. Affezionarsi alle esistenze che sfiora è un lusso che non può permettersi, influenzare un peccato di cui non vuole macchiarsi. Quando però conosce Rhiannon, chiudere gli occhi e riprendere il cammino da nomade è impossibile: per la prima volta innamorato, A cerca di stabilire un contatto. Rhiannon s''innamora a sua volta dell''anima di A, ma dimenticare il suo involucro è difficile, e pian piano la relazione con i mille volti di A si fa più delicata di un vetro sottile. Nel disperato tentativo di non perderla, A tradisce le sue regole, inizia a lasciare nelle esistenze quotidiane tracce e strascichi del suo passaggio, e qualcuno se ne accorge..', 1, 'copertina144.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (145, 'Te la sei cercata', 0, 'In una cittadina di provincia dove tutti si conoscono, Emma O''Donovan è diversa. Lei è speciale: bellissima, popolare, potente. E si dà un gran da fare perché le cose restino così. Fino a quella notte... Emma era troppo ubriaca per rendersi conto di cosa stava accadendo, troppo ubriaca per dire basta, troppo ubriaca per ricordare. Ma quelle immagini, quelle fotografie che tutti hanno visto, significano che non potrà mai dimenticare. Emma era speciale. Ma  ora è solo una fonte di imbarazzo. Ora è una sgualdrina. Ora non è niente.', 1, 'copertina145.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (146, 'Alderman Naomi', 0, 'Immagina che stia per arrivare la fine del mondo. Immagina che esista un algoritmo in grado di avvisarti con dieci giorni di anticipo e che solo un gruppo ristretto e molto selezionato di persone abbia accesso a queste informazioni. Salteresti a bordo di un aereo per salvarti mentre il resto dell''umanità collassa sotto la pressione del cambiamento climatico e di una nuova pandemia?', 0, 'copertina146.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (147, 'Il diario di uno sfigato innamorato', 0, 'Certo, la vita non è semplice per nessuno, ma se hai la sfortuna di avere due genitori che in un momento di follia hanno deciso di chiamarti Shakespeare c''è poco da fare: o diventi un genio o resti uno sfigato senza rimedio. E a ben guardare, finora, la vita di Shakespeare Shapiro non è stata nient''altro che una serie di catastrofi, una dopo l''altra. Ma arrivato all''ultimo anno delle superiori, è determinato a cambiare le cose e a chiudere gloriosamente una fase molto lunga e per niente esaltante della sua esistenza. L''occasione propizia si presenta quando a scuola gli viene assegnato un progetto di scrittura creativa. Shakespeare inizia a stilare una cronaca dettagliatissima e spassosa di tutti i fatti mortificanti che hanno costellato i suoi primi diciassette anni, e lo fa in un modo talmente brillante da procurargli il rispetto e l''ammirazione dei compagni di classe e, forse, anche di una certa ragazza verso la quale Shakespeare ha un debole..', 1, 'copertina147.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (148, 'Tra cielo e terra', 0, 'Nel 1904, i Clutterbuck lasciano l''Inghilterra e raggiungono Nairobi, e da lì la "terra imperiale" che Charles Clutterbuck ha comprato a buon prezzo. La terra si riduce a seicento ettari di macchia incolta e a tre capanne esposte alle intemperie. Due anni dopo, quando la macchia incolta ha quasi le sembianze di una fattoria di allevamento di cavalli, Clara, la moglie di Charles, compra un biglietto di ritorno per l''Inghilterra per sé e per Dickie, il figlio maggiore di cagionevole salute. L''Africa è troppo dura per lei, dice. Alla stazione di Nairobi bacia la piccola Beryl, rimasta sola col padre, e la esorta a essere forte. Beryl cresce libera nell''Africa indomita e selvaggia. A volte, quando è buio pesto, sguscia da una finestra aperta per raggiungere il suo amico Kibii, un ragazzino kipsigi. Intorno a un falò basso e scoppiettante ascolta i racconti della tribù e sogna di diventare anche lei un giovane guerriero…', 1, 'copertina148.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (149, 'Come ogni cosa in questo paese', 0, 'Colum McCann scrive tre potenti racconti sulla forza mitica dell’Irlanda e dei suoi abitanti. Un’adolescente che deve scegliere tra la fedeltà al padre cattolico e la gratitudine ai soldati britannici che hanno salvato la cavalla di famiglia, un giovane che cerca di replicare l’esperienza di suo zio militante dell’IRA e un ragazzino che fa la sua parte per le marce protestanti, nascondendo il suo coinvolgimento al padre cieco. ', 1, 'copertina149.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (150, 'Gli undici inganni', 0, 'Ben Harper, un brillante giornalista d''inchiesta, è tornato a vivere a Haddley, il tranquillo sobborgo di Londra in cui ha trascorso una burrascosa infanzia. Quando Ben aveva solo otto anni, i viali alberati, i grandi parchi e le eleganti villette di quel posto incantevole sono stati lo sfondo dell''assassinio di suo fratello, un dramma che il cronista sta ricostruendo per il suo nuovo podcast. Una sera di ottobre, rientrando a casa, Ben si imbatte nelle fiamme che divampano al centro ricreativo della cinquecentesca chiesa di St Stephen. Avvicinandosi, si accorge che qualcuno è rimasto intrappolato nel rogo. Ben sfida il fuoco per cercare di trarre in salvo lo sconosciuto, che però fugge via senza farsi riconoscere né lasciare traccia. Una reazione inspiegabile, che diventa ancor più enigmatica quando la polizia rinviene tra le macerie dell''edificio i resti di un cadavere…', 0, 'copertina150.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (151, 'Le montagne ghiacciate di Kolyma', 0, 'Uno scienziato, dopo la morte della moglie in un incidente d''auto, ottiene la posizione di direttore di un segretissimo centro di ricerca in Siberia, un ruolo che dovrà ricoprire fino alla morte. Ma quando compie una straordinaria scoperta scientifica che rivoluziona le teorie sull''evoluzione umana, capisce che l''unico che può aiutarlo è Johnny Porter, anticonformista scienziato canadese di origine pellerossa', 0, 'copertina151.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (152, 'Junk storia d’amore e perdizione', 0, 'Non è mai facile avere quattordici anni. Le difficoltà della vita sembrano insormontabili, il futuro così lontano e incerto... A volte per lasciarsi alle spalle una realtà dolorosa la fuga sembra l''unica soluzione. È il caso di Tar, che con Gemma decide di scappare da una casa di genitori violenti e alcolizzati, e di adattarsi a vivere per strada e in case occupate. Ma c''è anche un altro tipo di fuga, che promette ancor più di allontanare problemi e sofferenze, sollevare corpi troppo pesanti per giovani anime che aspirano alla leggerezza: l''eroina. E Tar e Gemma, insieme, scopriranno l''altra faccia di una droga che, impietosa, annulla e cancella personalità, dignità ed emozioni. Un romanzo di formazione crudo, vero e profondo, ma anche una storia di rinascita e riscatto, di scelte coraggiose per liberarsi dalla dipendenza e di un nuovo, seppur difficile, inizio.', 0, 'copertina152.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (153, 'Febbre gialla', 0, 'Ho è cinese, ha otto anni, lavora in silenzio in mezzo ad altri bambini schiavi come lui, e aspetta l''occasione giusta. L''occasione arriva: un salto da acrobata, una Lambretta stile Old Sixties e uno scontro terribile contro la 2CV di Vittorio, poliziotto al primo giorno di servizio, vent''anni, capelli rasati sulle tempie, walkman e anfibi. La fuga riprende e il duro dal cuore tenero si lancia all''inseguimento. Comincia una corsa folle, febbricitante, disperata, una discesa in un mondo oscuro e sotterraneo, eppure vicinissimo alle strade di una città italiana. Un mondo di schiavi e padroni, dove la libertà è ancora un sogno e per ottenere giustizia si deve lottare senza tregua.', 0, 'copertina153.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (154, 'Ombre sulla sabbia', 0, 'Kevin, 17 anni, è nato e cresciuto a Marle, lembo di terra vicino a Newcastle che a seconda delle maree diventa isola. Unica sua coetanea in paese è Susan, amica d''infanzia e ora forse qualcosa di più, anche se Kevin non le ha mai rivelato i suoi sentimenti per un''inconsapevole fiducia che niente cambierà. E invece Susan è irrequieta, e la città è un magnete irresistibile per chi è insofferente alla sonnolenza che ammanta Marle. Quando Susan d''improvviso parte per la città, Kevin si sente spaccare la terra sotto i piedi, e contro tutto e tutti decide di seguirla', 0, 'copertina154.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (155, 'The frozen boy', 0, 'Il dottor Robert Warren è un uomo distrutto dal rimorso e dai sensi di colpa. Con le sue ricerche ha contribuito alla realizzazione delle bombe che hanno raso al suolo Hiroshima e Nagasaki, e suo figlio Jack è morto, dilaniato da un''esplosione in un luogo imprecisato del Pacifco. Abbandonata la base militare e avventuratosi tra i ghiacci con l''intenzione di farla finita, Warren si imbatte nel corpo di un ragazzino racchiuso in una lastra di ghiaccio. Trasportato in laboratorio, il ragazzo viene rianimato, ma inizia a invecchiare rapidamente. Chi è? Da dove viene? Che lingua parla? Non c''è tempo per rispondere a queste domande, perché bisogna scappare dai servizi segreti che vogliono rapirlo e farne una cavia', 0, 'copertina155.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (156, 'La leggenda di Otori', 0, 'In un lontano Giappone feudale, splendido e al tempo stesso crudele, teatro di guerre tra clan, Tomasu vive in un villaggio abitato da una setta religiosa perseguitata dal cattivo Lord Iida, signore dei Tohan. Un giorno, tornando a casa dopo una passeggiata, Tomasu scopre di essere l''unico sopravvissuto di un massacro perpetrato da Iida. Miracolosamente salvo, viene adottato da Lord Shigeru del clan di Otori. D''ora in poi si chiamerà Takeo e la sua vita cambierà per sempre. Diventato muto in seguito alla tragedia, egli scopre di colpo di avere un udito straordinario e degli insospettati poteri magici che gli permetteranno di salvare da un brutale assassinio il suo benefattore', 0, 'copertina156.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (157, 'Ci sei solo tu', 0, 'Nella vita ci sono giornate schifose e giornate pessime. E poi esiste "Il giorno peggiore in assoluto". È quello che sta vivendo Camilla: ha appena scoperto per caso di essere stata adottata quando Toma, il suo ragazzo, le confessa di averla tradita con la sua migliore amica. Camilla non è certo il tipo che si chiude in camera a deprimersi, versando litri di lacrime e di inchiostro su uno stupido diario. Deve scoprire qualcosa del suo passato, trovare i suoi veri genitori. E per questo non ha bisogno di un fidanzato. Anzi, con i ragazzi ha chiuso per sempre! Poi in città arriva Carlos, gentile e misterioso, e Camilla pensa che tutto sommato al genere maschile si può concedere una seconda chance...', 0, 'copertina157.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (158, 'Questa non è la fine', 0, 'Quando il fidanzato Will e la migliore amica Penny muoiono in un incidente, Lake è distrutta dal dolore. Ma ha ancora una possibilità: può riportare in vita uno di loro grazie al procedimento vitalis. La legge, infatti, consente a tutti, al compimento dei diciotto anni, di scegliere qualcuno da resuscitare. Ma Lake ha un segreto: anni fa ha illegalmente promesso la risurrezione a qualcuno che non è ancora morto: suo fratello, paralizzato a causa di un misterioso incidente. La ricerca di risposte sul suo futuro fa sprofondare Lake nei segreti del passato. Tradimenti e ferite, nuovi e vecchi, minacciano di eclissare i ricordi felici e di farle rimettere tutto in discussione', 1, 'copertina158.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (159, 'Smart', 0, 'C''è stato un omicidio, ma alla polizia non importa. In fondo il morto era solo un vecchio senzatetto. Per questo deve pensarci Kieran. Forse non è bravo a capire le emozioni della gente, ma è un genio del disegno e sa guanto contano i dettagli. E ha fatto una promessa: scoprirà cosa è successo veramente. Ma improvvisarsi investigatore non è facile quando abiti in un quartiere disastrato, hai un patrigno violento e il tuo unico amico è un ragazzo ancora più emarginato di te. Indizi e secreti pericolosi sono ovunque, non soltanto nel quartiere e in città, ma perfino in casa sua: per arrivare alla verità Kieran dovrà usare tutto il suo coraggio.', 1, 'copertina159.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (160, 'Coraline', 0, 'In casa di Coraline ci sono tredici porte che permettono di entrare e uscire da stanze e corridoi. Ma ce n''è anche un''altra, la quattordicesima, che dà su un muro di mattoni. Cosa ci sarà oltre quella porta? Un giorno Coraline scopre che al di là della porta si apre un corridoio scuro, e alla fine del corridoio c''è una casa identica alla sua, con una donna identica a sua madre. O quasi.   161 Cercando l’onda Vick Christipher È Sam, appena arrivato dall''immensa Londra in un cottage sulle scogliere selvagge e meravigliose della Cornovaglia, a raccontarci la storia. L''ultima volta che era stato lì aveva quattro anni, il giorno in cui suo padre aveva perso la vita in una tempesta. Sam è esperto di fisica e meteorologia, sa bene come si forma un''onda, ma niente può prepararlo a ciò che la vita gli riserva nei prossimi mesi, all''attrazione irresistibile per Jade, l''inquieta e spericolata surfista sua vicina di casa, alla passione per il surf che travolgerà lui stesso. Jade insegue un''ossessione: quella di trovare e cavalcare un''onda enorme, come quella leggendaria immortalata in una cartolina del 1916, tra un gruppo di scogli che nessuno ha saputo più trovare. E mentre l''autunno foriero di tempeste si avvicina, la storia monta come un''onda profonda verso un finale mozzafiato   CAMBIAMENTO-RAPPORTI FAMILIARI-AMICIZIA-SFIDA-INCOSCIENZA GIOVANILE', 1, 'copertina160.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (161, 'Cercando l’onda', 0, 'È Sam, appena arrivato dall''immensa Londra in un cottage sulle scogliere selvagge e meravigliose della Cornovaglia, a raccontarci la storia. L''ultima volta che era stato lì aveva quattro anni, il giorno in cui suo padre aveva perso la vita in una tempesta. Sam è esperto di fisica e meteorologia, sa bene come si forma un''onda, ma niente può prepararlo a ciò che la vita gli riserva nei prossimi mesi, all''attrazione irresistibile per Jade, l''inquieta e spericolata surfista sua vicina di casa, alla passione per il surf che travolgerà lui stesso. Jade insegue un''ossessione: quella di trovare e cavalcare un''onda enorme, come quella leggendaria immortalata in una cartolina del 1916, tra un gruppo di scogli che nessuno ha saputo più trovare. E mentre l''autunno foriero di tempeste si avvicina, la storia monta come un''onda profonda verso un finale mozzafiato.', 1, 'copertina161.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (162, 'Some girls do', 0, 'Morgan, velocista d''élite, è costretta a cambiare istituto alla fine del suo ultimo anno dopo che si scopre che essere gay è contro il codice di condotta della scuola privata cattolica che frequenta. Lì incontra Ruby, che ha due hobby: armeggiare con la sua Ford Torino blu 1970 e partecipare a concorsi di bellezza locali, quest''ultimo per realizzare i sogni della madre prepotente. Le due sono attratte l''una dall''altra e non possono negare i loro sentimenti. Ma mentre Morgan - dichiarata, orgogliosa e determinata a ricominciare da capo - non vuole dover tenere segreta la loro relazione in erba, Ruby non è ancora pronta a fare coming out. Con ciascuna ragazza su un percorso diverso per vivere ognuna la propria verità, riusciranno a proseguire insieme?', 0, 'copertina162.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (163, 'L’istante perfetto', 0, 'Da quasi trent''anni la famiglia di Sierra coltiva "alberi di Natale" in un grande vivaio dell''Oregon. E ogni inverno si trasferisce per un mese in California per venderli. Sierra vive perciò due vite: una in Oregon e l''altra in California, ma solo per il periodo natalizio. Finché si trova lì si è ripromessa di non legarsi a nessun ragazzo, perché sarebbe doloroso poi, dopo solo un mese, doverlo lasciare. Ma quando incontra Caleb, tutto cambia. Certo, da quel che si dice in giro, non è proprio il fidanzato ideale. Pare infatti che, anni prima, abbia commesso un errore enorme, del quale sta continuando a pagare le conseguenze, fatte di ostilità, pregiudizi e isolamento. Ma a Sierra tutto questo non interessa.', 0, 'copertina163.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (164, 'Il solito normalissimo caos', 0, 'Mary Lou Finney scrive un diario delle vacanze, come le ha chiesto il suo insegnante di letteratura. E così dal 12 giugno al 5 settembre racconta tutto quello che le accade, soltanto che si accorge che le piace davvero tanto scrivere delle sue cose e, come dice nell''introduzione dedicata all''insegnante Mr. Birkway, il diario "le ha preso la mano" e invece di un impersonale compito delle vacanze è diventato un vero compagno di viaggio. Ed è per questo che Mary Lou chiede all''insegnante di non leggere il diario', 0, 'copertina164.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (165, 'Il mago', 0, 'Ged aiuta il padre nel mestiere di fabbro. Fin da ragazzo mostra di possedere un talento per le arti magiche, infatti, ancora piccolissimo, apprende i rudimenti della magia. Il ragazzo ha dentro di sé la “natura di mago” e all’età di 13 anni si spoglia del suo nome di bambino e riceve il suo vero nome: Ged. Ad assegnarglielo è il mago Ogion, che è venuto al villaggio a prendere il ragazzo per condurlo con sé ed istruirlo. Ogion è taciturno e paziente, mentre Ged, giovane e ambizioso, brucia dal desiderio di agire, usare il potere magico, raggiungere la gloria. La sua inesperienza lo conduce però a fare un uso avventato della magia e ad evocare un’ “ombra” su cui non ha controllo. Salvato per un soffio da Ogion, Ged decide di lasciare il maestro e di recarsi a Roke, dove si trova la più grande scuola per maghi. Ged si dimostra subito molto brillante, ma ancora una volta la sua ambizione e il suo orgoglio lo porteranno ad evocare poteri troppo grandi…', 1, 'copertina165.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (166, 'La febbre zombie', 0, 'Herbert vive a Eldsala, un minuscolo paese dove non succede mai niente, ma quest’estate è molto diversa dal solito. Per prima cosa il caldo anomalo, e con quello le vespe. Sono arrivate in massa e sono tante, tremendamente aggressive. Poi c’è un inquietante sconosciuto che fa cose sospettissime. Infine una strana febbre colpisce sempre più persone, rendendole violente, stranite e molto pericolose. Per essere un posto dove non accade nulla, stanno succedendo veramente troppe cose…', 1, 'copertina166.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (167, 'Carmilla la vampira', 0, 'Carmilla, la prima vampira della storia della letteratura, e il dottor Hesselius - medico e metafisico tedesco -, il primo detective dell''occulto, sono i due principali protagonisti di questa raccolta di storie "gotiche". Un testo chiave, la cui influenza sarà fortissima in tutta la letteratura del Novecento sui fantasmi. Tè verde (1869) è il racconto del reverendo Jennings che, dopo la lettura di "certi volumi antichi, edizioni tedesche di testi in latino medievale", mentre torna a casa con l''omnibus, vede comparire una misteriosa scimmia. Il giudice Harbottle (1872) è la funesta cronaca della nemesi piombata su Mr Harbottle, uomo malvagio e corrotto. Carmilla (1871-1872), infine, il più famoso dei racconti di Le Fanu, narra le astuzie e i languori della vampira Carmilla.', 0, 'copertina167.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (168, 'Senza dirlo a nessuno', 0, 'Stamattina tutti credono che Manish sia dove dovrebbe essere: nella sua scuola di Londra, seduto al banco a seguire le lezioni. Ma il mondo spesso si sbaglia su di lui. Infatti Manish si è svegliato all’alba e ha preso di nascosto un aereo per volare fino a Roma – dove adesso è in stato d’arresto. Il segreto che lui custodisce così bene può ricomporre per qualche giorno la sua famiglia sparpagliata, costringendo tutti a imparare le regole di un gioco nuovo per poter restare in contatto. Senza dirlo a nessuno è un romanzo dove le generazioni s’incontrano, dal ritmo incalzante come una spy-story', 1, 'copertina168.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (169, 'Gli anni di luce', 0, 'Tutta l''esistenza di Luce ha sempre ruotato intorno a sua madre. Una madre ingombrante, bellissima e ciclotimica, a volte autodistruttiva, spesso incomprensibile. Una madre che voleva far l''attrice e che diventa precaria in Rai, una donna diversa da tutte le altre, che assieme all''amore per la cultura trasmette l''incertezza di quello che è il perimetro degli affetti. Per Luce e sua sorella Vita l''infanzia è una catena di traslochi, rivoluzioni famigliari e spostamenti da una città all''altra. Da Milano, dove vivevano in una bella casa di un quartiere nobile, madre e figlie sbarcano a Roma, in un piccolo appartamento di periferia, dove si va a dormire al tramonto perché manca la corrente elettrica.. Se da piccola Luce è una bambina obbediente, da adolescente diventa ribelle e conflittuale, in cerca del proprio passato…', 0, 'copertina169.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (170, 'L’ora di pietra', 0, 'I suoi primi tredici anni Immacolata, per tutti Imma, li ha vissuti dove è nata, in un paese del profondo Sud, non lontano da Napoli, dove la legge è quella dettata dal boss locale e le donne sono costrette a chinare il capo di fronte al volere - o al rifiuto - dei loro uomini. Già segnata da un grande dolore durante l''infanzia e testimone, non vista, di un terribile delitto, Imma cresce cercando di dominare la propria indole selvatica e indipendente: ma quando, in seguito a un suo gesto di coraggiosa ribellione, la famiglia decide di mandarla al Nord, nascondendola a casa di una zia che lei quasi non conosce, Imma si trova all''improvviso a fare i conti con se stessa.', 1, 'copertina170.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (171, 'Il principe e la sarta', 0, 'Jen Wang racconta una storia deliziosa, ambientata all''inizio del Ventesimo secolo, ma assolutamente senza tempo: il giovane principe del Belgio è un cross dresser, e assume una giovane sarta perché gli cucia i bellissimi vestiti femminili che lui stesso disegna. La sera girano i locali di Parigi, e nessuno sa che sotto la parrucca di Lady Crystallia c''è una futura testa coronata. Cosa può andare storto, giusto? Una storia di amicizia, comprensione di sé, moda, pregiudizi, primi batticuori e la necessità di scriversi da soli il proprio destino.', 0, 'copertina171.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (172, 'Fai rumore', 0, 'amiche, vicine. A volte nemmeno ce ne rendiamo conto, minimizziamo, non abbiamo gli strumenti per comprendere, reagire, parlarne ad alta voce. Ed è proprio per questo che nasce questo libro: per rompere il silenzio e riempirlo nelle nostre storie e delle nostre parole, per far sì che situazioni così non capitino mai più. E allora, avanti... FAI RUMORE!', 0, 'copertina172.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (173, 'Speak il graphic', 0, '«Parla. Siamo qui per ascoltarti.» Melinda sa che questa è una delle tante bugie che ti raccontano al liceo. Perché nessuno vuole ascoltare quello che hai da dire. Soprattutto se non riesci a esprimerlo, se fai fatica a trovare le parole. Colpevole di aver rovinato una festa chiamando la polizia, Melinda non ha più amici e viene maltrattata a scuola. Nessuno la saluta, figuriamoci ascoltarla per capire cosa è successo veramente quella sera. Eppure Melinda troverà la forza per affrontare una violenza inconfessabile, subita nell''estate dei suoi tredici anni. E finalmente avrà il coraggio di parlare.', 0, 'copertina173.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (174, 'Fangirl il manga v. 1-2', 0, 'Versione manga del bestseller omonimo di Rainbow Rowell, racconta le vicende delle due gemello Cath e Wren, alle prese con il primo anno di università, tra amicizie e primi amori', 0, 'copertina174.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (175, 'Primo amore', 0, 'Ora che il liceo è finito, Ari non vede l''ora di trasferirsi nella grande città con la sua band e vivere di musica. Deve solo riuscire a convincere suo padre, che invece vorrebbe che continuasse a lavorare con lui nella pasticceria di famiglia. Ari da bambino amava aiutare il padre, ma adesso non riesce a immaginare una vita sprecata tra lievito e impasti. Decide allora di trovare un sostituto e, tra i tanti assurdi candidati che si presentano, incontra Hector, un ragazzo che ama cucinare tanto quanto Ari vuole scappare. Fianco a fianco in cucina i due si avvicinano e si conoscono meglio, e l''amore è pronto a sbocciare... sempre che Ari non rovini tutto', 0, 'copertina175.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (176, 'Assassinio sull’Orient Express', 0, 'Qui fedelmente reso dall''elegante sceneggiatura di Benjamin Von Eckartsberg e dal tratto pittorico dei disegni di Chaiko, Assassinio sull''Orient Express è senza dubbio la più celebre indagine dell''impareggiabile Hercule Poirot: mentre il più lussuoso e suggestivo dei treni passeggeri è bloccato dalla neve, un uomo d''affari viene assassinato con dodici coltellate e Poirot, che si trova tra i passeggeri, non ha altra scelta che occuparsi del caso.', 0, 'copertina176.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (177, 'Il cane che guarda le stelle', 0, 'Sul ciglio di una strada di campagna viene rinvenuta un’auto abbandonata con al suo interno i resti di un uomo e del suo cane, morto in un periodo ben successivo rispetto al padrone. Takashi Murakami sfrutta questo semplice incipit per analizzare in maniera dolce il rapporto che lega indissolubilmente i due protagonisti.', 0, 'copertina177.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (178, 'Le piccole vittorie', 0, 'Come dire al proprio figlio tanto atteso che è il più formidabile dei bambini malgrado l''inaspettata e terribile diagnosi: autismo, disturbi psicomotori, disadattamento sociale... Questa storia è la lotta intrapresa da un padre, rimasto unito alla moglie malgrado la separazione, per trasformare insieme una disfatta annunciata in tante formidabili piccole vittorie.', 0, 'copertina178.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (179, 'Menta', 0, 'Cosa accade dentro di noi quando qualcuno che amiamo muore? Lamia, ragazza forte e intelligente, lo sperimenterà sulla sua pelle. Molto legata al suo anziano cane, Otto, e alla sua vicina Marzia, dovrà affrontare un momento molto difficile quando prima uno e poi l''altra moriranno. Da questo momento, una serie di cose strane inizieranno ad accadere: lampioni tremolanti, rumori forti nel giardino, ombre minacciose. La presenza del nuovo vicino, Michele, complicherà ancora di più le cose. Come farà Lamia, con l''aiuto della sua amica Lu, a superare tutto questo? Un graphic novel in cui la realtà brutale dei sentimenti, il mistero e il fantastico si intrecciano, regalando momenti di pura suspense.', 0, 'copertina179.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (180, 'Quartieri lontani', 0, 'Hiroshi Nakahara ha quarantotto anni, una moglie e due splendide figlie. Un giorno, di ritorno da un viaggio di lavoro, si ritrova improvvisamente catapultato nel suo passato da quattordicenne. È l''occasione per rivivere un periodo cruciale della sua vita e forse cambiare quegli eventi che hanno segnato indelebilmente il suo destino... «Quartieri lontani» è una riflessione sul tempo e le ineluttabilità della vita.', 0, 'copertina180.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (181, 'Angela Davis', 0, 'Perché per i neri esiste un lato giusto e uno sbagliato della strada in cui abitare? E perché i “fratelli” cercano di compiacere i bianchi, invece di lottare contro chi li domina e li opprime? Angela è una ragazzina, quando comincia a farsi queste domande, e oggi, il suo cammino di lotta iniziato negli anni “70, non è ancora finito. Partendo dalla sua esperienza in carcere, per una accusa da cui viene scagionata, il racconto della sua esperienza si muove tra flashback, istantanee di vita e riflessioni capaci di offrire ancora oggi spunti di critica storica e sociale di grande impatto', 0, 'copertina181.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (182, 'La guerra di Catherine', 0, '1941. Rachel frequenta una scuola diversa dalle altre, che stimola la creatività. Qui stringe forti amicizie e scopre la passione per la fotografia. Ben presto però le leggi contro gli ebrei si intensificano, e i ragazzi sono costretti a fuggire, aiutati da una rete di resistenti: devono dimenticare il proprio passato e persino cambiare nome. Rachel diventa Catherine e comincia una nuova vita, fatta di spostamenti, incontri, sorrisi e dolori, ma sempre con la sua macchina fotografica al collo, alla ricerca, nonostante tutto, della bellezza', 0, 'copertina182.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (183, 'Nera: Claudette Colvin', 0, 'Fai un respiro profondo. Eccoti ora nella pelle di Claudette Colvin: un''adolescente nera di quindici anni che vive nell''Alabama degli anni Cinquanta. Da quando sei piccola, sai che i neri devono vivere separati dai bianchi, e che se non lo fanno possono andare incontro alla prigione o addirittura alla morte. Ma oggi cambierai la storia.', 0, 'copertina183.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (184, 'Girotondo', 0, 'Un graphic novel in dieci episodi per lettori young adult di ambientazione bolognese: l''amore ai tempi di WhatsApp in tutte le sue declinazioni e varianti, illusione, forza, disperazione, tradimenti, sogni. Dieci racconti collegati tra loro dalle storie di dieci personaggi, episodi che toccano ognuno una situazione amorosa, un tema, con due protagonisti alla volta. È un girotondo di amori, sesso, amicizia, innamoramenti, cotte, tradimenti nella Bologna contemporanea. Schiettezza, lucidità, poesia, potenza, realismo sono le parole giuste per descrivere questo libro che racconta i giovani di oggi proprio come loro stessi si racconterebbero', 0, 'copertina184.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (185, 'Il porto proibito', 0, 'Nell''estate del 1807, una nave della marina di Sua Maestà recupera al largo del Siam un giovane naufrago, Abel, che di sé ricorda soltanto il nome. Diventa ben presto amico del primo ufficiale, facente funzioni di capitano perché il comandante della nave è, a quanto pare, scappato dopo essersi appropriato dei valori presenti a bordo. Abel torna in Inghilterra con l''Explorer, e trova alloggio presso la locanda gestita dalle tre figlie del capitano fuggiasco. Ben prima che gli possa tornare la memoria, però, scoprirà qualcosa di profondamente inquietante su di sé, e comprenderà la vera natura di alcune delle persone che lo hanno aiutato. Un libro intenso, che scava nell''anima dei protagonisti e dei lettori', 0, 'copertina185.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (186, 'La mia ultima estate con Cass', 0, 'Megan e Cass sono cresciute insieme. Ogni anno, le loro famiglie andavano in vacanza nel Michigan, dove le ragazze si rilassavano in riva al lago e disegnavano, dagli scarabocchi da bambine ai ritratti della loro adolescenza. Dopo il trasferimento a New York per la separazione dei genitori, Cass invita Megan a passare l’estate con lei a Brooklin. Megan accetta con gioia, ma la Cass che troverà non è la stessa di quand’erano bambine: è un’artista ribelle, uno spirito libero, senza regole, perfettamente integrata nella grande città. Le ragazze iniziano a collaborare su un dipinto che sarà presentato in una mostra in una prestigiosa galleria locale. Ma quando un segreto viene alla luce e una di loro supera il limite la loro amicizia riuscirà a sopravvivere?', 0, 'copertina186.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (187, 'Il buio oltre la siepe', 0, 'Maycomb, Alabama, 1933. Nel profondissimo Sud degli Stati Uniti, segnato dalla Depressione e dalle manifestazioni del Ku Klux Klan, la piccola Jean Louise Finch, detta Scout, cresce insieme al fratello Jem con il padre Atticus, avvocato. La sua vita cambia per sempre quando Atticus assume la difesa di un uomo di colore, Tom Robinson, accusato di avere violentato una ragazza bianca', 0, 'copertina187.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (188, 'La ragazza del mare', 0, 'Morgan ha un segreto: non vede l''ora di fuggire dalla piccola isola perfetta dove vive. Vuole assolutamente finire il liceo e scappare dalla madre triste e divorziata, dal fratellino volubile, e dal suo gruppo di amici che sembra non capirla. Perché in realtà, il più grande segreto di Morgan è che ha tanti segreti, incluso voler baciare un''altra ragazza.', 0, 'copertina188.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (189, 'Suite francese', 0, 'Nei mesi che precedettero il suo arresto e la deportazione ad Auschwitz, Irène Némirovsky compose febbrilmente i primi due romanzi di una grande «sinfonia in cinque movimenti» che doveva narrare, quasi in presa diretta, il destino di una nazione, la Francia, sotto l’occupazione nazista: Tempesta in giugno (che racconta la fuga in massa dei parigini alla vigilia dell’arrivo dei tedeschi) e Dolce (il cui nucleo centrale è la passione, tanto più bruciante quanto più soffocata, che lega una «sposa di guerra» a un ufficiale tedesco). La pubblicazione, a sessant’anni di distanza, di Suite francese, il volume che li riunisce, è stata in Francia un vero evento letterario', 0, 'copertina189.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (190, 'La cattedrale del mare', 0, 'Barcellona, XIV secolo. Nel cuore dell''umile quartiere della Ribera gli occhi curiosi del piccolo Arnau sono catturati dalle maestose mura di una grande chiesa in costruzione. Un incontro decisivo, poiché la storia di Santa Maria del Mar sarà il cardine delle tormentate vicende della sua esistenza. Figlio di un servo fuggiasco, nella capitale catalana Arnau trova rifugio e quella sospirata libertà che a tutt''oggi incarna lo spirito di Barcellona, all''epoca in pieno fermento: i vecchi istituti feudali sono al tramonto e mercanti e banchieri in ascesa, sempre più influenti nel determinare le sorti della città, impegnata in aspre battaglie per il controllo dei mari. Intanto l''azione, dell''Inquisizione minaccia la già non facile convivenza fra cristiani, musulmani ed ebrei.', 0, 'copertina190.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (191, 'La ragazza nella nebbia', 0, 'La notte in cui tutto cambia per sempre è una notte di ghiaccio e nebbia ad Avechot, un paese rintanato in una valle profonda fra le ombre delle Alpi. Forse è stata proprio colpa della nebbia se l''auto dell''agente speciale Vogel è finita in un fosso. Un banale incidente. Vogel è illeso, ma sotto shock. Non ricorda perché è lì e come ci è arrivato. Eppure una cosa è certa: l''agente speciale Vogel dovrebbe trovarsi da tutt''altra parte, lontano da Avechot. Infatti, sono ormai passati due mesi da quando una ragazzina del paese è scomparsa nella nebbia. Due mesi da quando Vogel si è occupato di quello che, da semplice caso di allontanamento volontario, si è trasformato prima in un caso di rapimento e, da lì, in un colossale caso mediatico.', 0, 'copertina191.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (192, 'Eleanor Oliphant sta benissimo', 0, 'Mi chiamo Eleanor Oliphant e sto bene, anzi: sto benissimo. Non bado agli altri. So che spesso mi fissano, sussurrano, girano la testa quando passo. Forse è perché io dico sempre quello che penso. Ma io sorrido. Ho quasi trent''anni e da nove lavoro nello stesso ufficio. In pausa pranzo faccio le parole crociate. Poi torno a casa e mi prendo cura di Polly, la mia piantina: lei ha bisogno di me, e io non ho bisogno di nient''altro. Perché da sola sto bene. Solo il mercoledì mi inquieta, perché è il giorno in cui arriva la telefonata di mia madre. Mi chiama dalla prigione. Dopo averla sentita, mi accorgo di sfiorare la cicatrice che ho sul volto e ogni cosa mi sembra diversa. Ma non dura molto, perché io non lo permetto. E se me lo chiedete, infatti, io sto bene. Anzi, benissimo. O così credevo, fino a oggi. Perché oggi è successa una cosa nuova. Qualcuno mi ha rivolto un gesto gentile. Il primo della mia vita.', 0, 'copertina192.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (193, 'L’Arminuta', 0, 'Una ragazzina tredicenne, con una valigia in mano e una sacca di scarpe nell''altra, suona a una porta sconosciuta. Ha appena perso tutto: una casa confortevole, le amiche, l''affetto dei genitori. O meglio, di quelli che credeva suoi genitori. Ora l''aspetta una nuova vita nella casa piccola e buia della sua famiglia naturale: tanti fratelli e poco cibo sul tavolo', 0, 'copertina193.jpeg');
INSERT INTO GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (194, 'Nel mare ci sono i coccodrilli', 0, 'Se nasci in Afghanistan, nel posto sbagliato e nel momento sbagliato, può capitare che, anche se sei un bambino alto come una capra, e uno dei migliori a giocare a Buzul-bazi, qualcuno reclami la tua vita. Tuo padre è morto lavorando per un ricco signore, il carico del camion che guidava è andato perduto e tu dovresti esserne il risarcimento. Ecco perché quando bussano alla porta corri a nasconderti. Ma ora stai diventando troppo grande per la buca che tua madre ha scavato vicino alle patate. Così, un giorno, lei ti dice che dovete fare un viaggio. Ti accompagna in Pakistan, ti accarezza i capelli, ti fa promettere che diventerai un uomo per bene e ti lascia solo.  Da questo tragico atto di amore hanno inizio la prematura vita adulta di Enaiatollah Akbari e l''incredibile viaggio che lo porterà in Italia passando perl''Iran, la Turchia e la Grecia.', 0, 'copertina194.jpeg');

insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) values (195, 'Speak le parole non dette',1,'',0,'copertina195.jpeg');

insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) values (196, 'Pomodori verdi fritti al caffè di Whistle stop',1,'',0,'copertina196.jpeg');

insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (197, 'Stand by me', 0, '', 0, 'copertina197.jpeg');

insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (198, 'Le ali della libertà', 0, '', 0, 'copertina198.jpeg');

insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (199, 'Carrie (2012)', 1, '', 0, 'copertina199.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (200, 'Carrie (1976)', 1, '', 0, 'copertina200.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (201, 'The giver Il donatore', 1, '', 0, 'copertina201.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (202, 'Io sono leggenda', 1, '', 0, 'copertina202.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (203, 'Sono il numero quattro', 1, '', 0, 'copertina203.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (204, 'La diseducazione di Cameron Post', 1, '', 0, 'copertina204.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (205, 'The eagle', 1, '', 0, 'copertina205.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (206, 'Timeline', 1, '', 0, 'copertina206.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (207, 'The help', 1, '', 0, 'copertina207.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (208, 'The host. L''ospite', 1, '', 0, 'copertina208.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (209, 'iBoy (serie Netflix)', 1, '', 0, 'copertina209.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (210, 'Hill House (serie Netflix)', 1, '', 0, 'copertina210.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (211, 'L''uomo delle castagne (serie Netflix)', 1, '', 0, 'copertina211.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (212, 'On choisit pas ses parents = Oh boy!', 1, '', 0, 'copertina212.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (213, 'Camera con vista', 1, '', 0, 'copertina213.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (214, 'L''armiuta', 1, '', 0, 'copertina214.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (215, 'La ragazza della palude', 1, '', 0, 'copertina215.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (216, 'La masseria delle allodole', 1, '', 0, 'copertina216.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (217, '	Ventaglio segreto - Fiore di neve e il ventaglio segreto', 1, '', 0, 'copertina217.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (218, '	Stardust', 1, '', 0, 'copertina218.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (219, 'La lunga vita di Marianna Ucria', 1, '', 0, 'copertina219.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (220, 'Monaco: sull’orlo della guerra', 1, '', 0, 'copertina220.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (221, 'L''allieva (serie tv)', 1, '', 0, 'copertina221.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (222, 'Suite francese', 1, '', 0, 'copertina222.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (223, 'Il sole a mezzanotte (serie Netflix)', 1, '', 0, 'copertina223.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (224, 'Colpa delle stelle', 1, '', 0, 'copertina224.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (225, 'Tenebre e ossa (serie Netflix)', 1, '', 0, 'copertina225.jpeg');
insert into GAL_libri (id, titolo, film, sinossi, mlol, urlCopertina) VALUES (226, 'Tutto chiede salvezza (serie Netflix', 1, '', 0, 'copertina226.jpeg');

-- Collegamenti opere-parole chiave
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (1, 1);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (1, 2);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (1, 3);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (1, 4);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (1, 5);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (1, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (2, 7);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (2, 8);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (2, 9);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (2, 10);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (2, 1);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (3, 2);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (3, 9);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (3, 11);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (4, 12);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (4, 13);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (4, 14);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (4, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (4, 15);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (4, 16);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (4, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (4, 1);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (5, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (5, 18);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (5, 19);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (5, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (5, 9);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (5, 20);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (6, 21);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (6, 22);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (6, 23);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (6, 20);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (6, 24);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (7, 21);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (7, 22);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (7, 23);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (7, 20);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (7, 24);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (8, 25);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (8, 26);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (8, 13);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (9, 25);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (9, 13);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (9, 27);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (9, 21);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (9, 28);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (10, 7);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (10, 29);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (10, 30);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (10, 13);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (10, 31);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (12, 30);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (12, 32);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (12, 33);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (12, 34);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (12, 1);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (12, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (13, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (13, 32);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (13, 35);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (13, 36);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (13, 37);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (13, 38);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (14, 21);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (14, 32);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (14, 39);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (14, 40);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (14, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (15, 41);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (15, 42);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (15, 43);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (15, 44);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (15, 32);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (16, 7);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (16, 30);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (16, 13);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (16, 45);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (16, 46);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (16, 32);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (16, 1);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (17, 47);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (17, 21);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (17, 48);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (17, 13);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (17, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (17, 37);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (17, 49);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (18, 7);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (18, 13);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (18, 25);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (18, 21);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (18, 50);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (18, 37);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (19, 51);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (19, 52);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (19, 53);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (20, 54);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (20, 23);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (20, 55);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (21, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (21, 3);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (21, 56);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (21, 57);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (21, 10);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (22, 25);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (22, 58);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (22, 59);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (22, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (22, 60);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (23, 61);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (23, 62);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (23, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (24, 60);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (24, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (24, 63);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (24, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (24, 64);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (24, 21);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (25, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (25, 65);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (25, 66);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (25, 67);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (25, 68);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (25, 69);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (26, 70);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (26, 71);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (26, 72);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (26, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (26, 60);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (26, 73);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (27, 41);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (27, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (27, 74);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (27, 1);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (27, 75);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (28, 21);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (28, 76);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (28, 77);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (28, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (28, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (28, 78);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (29, 12);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (29, 79);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (29, 80);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (29, 81);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (29, 82);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (29, 83);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (29, 69);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (30, 70);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (30, 84);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (30, 85);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (30, 86);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (30, 87);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (31, 70);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (31, 88);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (31, 41);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (31, 89);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (31, 66);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (32, 90);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (32, 91);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (32, 92);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (32, 93);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (32, 94);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (33, 95);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (33, 96);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (33, 97);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (33, 98);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (33, 99);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (34, 70);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (34, 71);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (34, 100);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (34, 101);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (34, 66);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (35, 70);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (35, 102);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (35, 103);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (35, 104);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (36, 105);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (36, 106);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (37, 40);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (37, 107);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (37, 60);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (37, 108);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (38, 109);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (38, 40);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (38, 110);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (38, 13);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (38, 111);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (39, 40);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (39, 61);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (39, 112);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (39, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (40, 25);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (40, 113);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (40, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (40, 114);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (41, 115);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (41, 116);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (41, 117);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (41, 114);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (41, 118);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (42, 115);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (42, 119);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (42, 120);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (42, 121);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (42, 122);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (43, 7);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (43, 30);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (43, 123);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (43, 13);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (43, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (44, 124);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (44, 125);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (44, 126);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (44, 127);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (45, 25);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (45, 2);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (45, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (45, 128);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (45, 129);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (46, 2);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (46, 130);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (46, 131);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (46, 80);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (46, 132);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (47, 133);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (47, 134);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (47, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (47, 135);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (48, 133);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (48, 134);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (48, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (48, 135);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (49, 1);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (49, 27);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (49, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (50, 136);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (50, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (50, 137);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (51, 138);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (51, 139);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (51, 27);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (51, 140);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (51, 21);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (52, 115);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (52, 141);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (52, 142);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (53, 25);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (53, 70);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (53, 143);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (53, 110);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (53, 144);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (53, 66);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (53, 127);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (54, 25);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (54, 145);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (54, 110);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (54, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (54, 127);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (55, 146);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (55, 147);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (55, 148);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (55, 149);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (56, 150);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (56, 13);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (56, 151);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (56, 127);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (57, 89);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (57, 152);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (57, 151);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (57, 153);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (57, 154);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (58, 155);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (58, 156);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (58, 41);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (58, 157);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (58, 158);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (58, 127);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (59, 134);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (59, 159);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (59, 130);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (59, 160);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (59, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (59, 127);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (60, 89);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (60, 161);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (60, 162);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (60, 163);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (60, 127);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (61, 164);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (61, 145);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (61, 165);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (61, 127);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (62, 164);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (62, 145);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (62, 165);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (62, 127);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (63, 166);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (63, 132);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (63, 8);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (63, 167);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (63, 168);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (63, 60);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (64, 169);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (64, 170);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (64, 171);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (64, 114);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (65, 172);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (65, 173);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (65, 174);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (65, 175);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (65, 176);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (66, 177);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (66, 178);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (66, 179);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (66, 180);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (66, 181);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (67, 134);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (67, 182);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (67, 47);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (67, 25);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (67, 4);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (67, 37);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (67, 183);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (68, 70);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (68, 66);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (68, 184);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (68, 94);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (68, 114);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (69, 185);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (69, 68);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (69, 186);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (69, 21);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (69, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (70, 89);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (70, 130);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (70, 187);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (70, 188);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (70, 189);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (70, 190);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (71, 134);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (71, 191);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (71, 192);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (71, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (72, 7);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (72, 30);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (72, 193);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (72, 194);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (72, 37);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (74, 124);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (74, 195);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (74, 196);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (75, 134);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (75, 197);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (75, 198);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (76, 134);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (76, 199);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (76, 200);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (76, 201);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (76, 1);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (77, 134);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (77, 202);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (77, 203);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (77, 204);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (79, 205);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (79, 206);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (79, 60);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (80, 207);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (80, 208);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (80, 209);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (82, 210);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (82, 211);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (82, 212);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (82, 1);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (82, 94);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (82, 154);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (84, 213);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (84, 2);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (84, 101);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (84, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (84, 37);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (85, 214);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (85, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (85, 61);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (85, 215);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (85, 114);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (85, 216);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (85, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (86, 217);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (86, 218);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (86, 219);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (86, 220);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (89, 221);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (89, 20);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (89, 222);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (89, 223);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (89, 153);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (90, 224);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (90, 225);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (90, 226);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (91, 227);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (91, 228);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (91, 113);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (91, 60);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (92, 229);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (92, 230);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (92, 89);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (92, 231);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (92, 232);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (94, 233);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (94, 234);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (94, 235);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (94, 236);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (94, 237);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (96, 238);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (96, 239);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (96, 240);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (96, 241);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (97, 242);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (97, 243);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (97, 58);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (97, 244);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (97, 240);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (98, 245);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (98, 246);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (98, 247);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (98, 248);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (99, 134);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (99, 249);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (99, 250);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (99, 1);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (99, 251);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (99, 66);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (100, 134);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (100, 252);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (100, 45);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (102, 253);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (102, 254);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (103, 255);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (103, 256);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (103, 257);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (107, 134);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (107, 258);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (107, 259);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (107, 260);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (107, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (108, 134);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (108, 261);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (108, 262);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (108, 66);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (109, 134);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (109, 263);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (109, 264);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (109, 265);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (109, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (109, 25);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (109, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (110, 134);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (110, 266);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (110, 267);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (110, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (110, 268);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (110, 269);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (110, 270);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (111, 134);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (111, 271);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (111, 195);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (111, 240);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (111, 272);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (112, 273);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (112, 274);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (112, 275);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (112, 276);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (114, 70);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (114, 277);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (114, 278);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (114, 279);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (114, 13);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (115, 280);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (115, 195);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (115, 113);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (115, 281);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (116, 280);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (116, 195);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (116, 113);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (116, 281);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (117, 282);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (117, 283);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (117, 284);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (117, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (117, 1);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (118, 29);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (118, 285);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (118, 192);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (118, 286);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (119, 287);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (119, 288);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (119, 289);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (119, 25);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (120, 290);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (120, 1);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (120, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (121, 291);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (121, 179);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (121, 292);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (121, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (121, 130);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (122, 293);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (122, 221);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (122, 259);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (122, 294);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (122, 295);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (122, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (123, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (123, 118);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (123, 296);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (123, 94);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (123, 297);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (124, 27);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (124, 298);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (124, 299);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (125, 1);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (125, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (125, 300);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (125, 301);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (126, 134);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (126, 302);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (126, 13);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (126, 303);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (127, 304);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (127, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (127, 305);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (127, 306);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (127, 307);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (128, 308);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (128, 309);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (128, 310);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (129, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (129, 311);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (129, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (129, 312);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (130, 89);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (130, 313);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (130, 314);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (130, 315);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (133, 23);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (133, 316);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (133, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (133, 317);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (135, 318);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (135, 319);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (135, 268);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (135, 320);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (136, 321);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (136, 13);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (136, 322);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (136, 270);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (138, 323);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (138, 324);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (138, 259);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (138, 45);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (138, 13);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (138, 325);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (139, 326);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (139, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (139, 327);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (139, 328);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (139, 329);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (140, 20);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (140, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (140, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (140, 1);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (141, 330);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (141, 25);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (141, 28);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (141, 331);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (142, 7);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (142, 25);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (142, 332);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (142, 13);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (142, 333);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (143, 29);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (143, 192);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (143, 13);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (143, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (143, 1);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (144, 334);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (144, 221);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (144, 335);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (144, 336);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (144, 1);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (145, 337);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (145, 338);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (145, 339);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (146, 340);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (146, 341);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (146, 342);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (146, 343);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (147, 344);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (147, 345);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (147, 346);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (147, 60);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (147, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (147, 1);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (148, 134);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (148, 347);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (148, 308);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (148, 348);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (150, 124);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (150, 94);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (150, 113);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (150, 349);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (151, 350);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (151, 351);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (151, 352);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (151, 13);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (152, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (152, 353);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (152, 354);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (152, 355);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (152, 356);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (153, 357);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (153, 240);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (153, 259);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (153, 358);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (154, 130);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (154, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (154, 1);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (154, 359);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (155, 360);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (155, 361);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (155, 362);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (155, 154);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (156, 363);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (156, 7);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (156, 364);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (156, 13);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (156, 365);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (156, 1);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (157, 366);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (157, 367);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (157, 1);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (157, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (157, 368);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (158, 115);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (158, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (158, 1);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (158, 21);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (158, 114);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (158, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (158, 369);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (159, 20);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (159, 370);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (159, 94);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (159, 113);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (160, 371);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (160, 7);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (160, 45);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (160, 372);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (160, 373);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (162, 374);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (162, 375);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (162, 376);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (162, 377);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (162, 378);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (163, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (163, 1);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (163, 379);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (163, 380);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (164, 381);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (164, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (164, 382);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (164, 323);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (165, 383);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (165, 30);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (165, 384);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (165, 385);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (165, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (165, 386);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (166, 371);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (166, 387);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (166, 388);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (166, 13);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (167, 389);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (167, 390);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (167, 391);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (168, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (168, 60);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (168, 392);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (168, 354);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (169, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (169, 60);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (169, 118);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (169, 393);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (170, 394);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (170, 259);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (170, 60);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (170, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (170, 395);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (172, 396);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (172, 397);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (172, 398);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (172, 399);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (175, 68);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (175, 400);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (175, 213);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (175, 61);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (176, 94);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (176, 113);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (177, 401);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (177, 36);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (177, 21);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (178, 402);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (178, 403);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (178, 305);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (178, 404);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (179, 21);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (179, 5);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (179, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (179, 118);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (179, 25);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (180, 277);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (180, 405);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (180, 406);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (180, 407);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (181, 308);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (181, 408);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (181, 409);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (181, 410);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (182, 134);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (182, 197);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (182, 411);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (182, 259);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (182, 412);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (184, 1);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (184, 367);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (184, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (184, 413);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (185, 13);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (185, 414);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (185, 415);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (185, 401);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (185, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (185, 1);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (185, 21);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (186, 17);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (186, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (186, 416);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (186, 417);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (187, 418);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (187, 377);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (187, 4);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (188, 382);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (188, 6);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (188, 419);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (189, 134);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (189, 420);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (191, 124);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (191, 421);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (191, 25);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (191, 113);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (194, 422);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (194, 423);
INSERT INTO GAL_libriConParoleChiave (idLibro, idParolaChiave) VALUES (194, 170);

-- Script per inserire parole chiave e associarle ai libri
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('1° DI UNA TRILOGIA');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('AMERICA ANNI ’50');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('AMERICA ANNI ’60');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('AMERICA ANNI ’70');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('AMICIZIA');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('AMORE');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('AMORE MATERNO');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('ANTISEMITISMO');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('AVVENTURA');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('BARCELLONA DEL XIV SEC');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('BERNARDINO DA FELTRE');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('BOLZANO ANNI ’30');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('CAMBIAMENTO');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('CARCERE');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('CINA XIX SEC.');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('COMPRENSIONE DELL’ALTRO');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('COMPRENSIONE DI SE’');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('CONDIZIONE FEMMINILE');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('CONDIZIONE INFANTILE');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('CONFLITTO RAZZIALE');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('CONVIVENZA');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('CRESCITA');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('DELITTI');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('DELITTO');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('DISTOPICO');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('DOMESTICHE DI COLORE');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('EMANCIPAZIONE FEMMINILE');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('ESILIO');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('ESODO DA SUD A NORD');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('FANTASY');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('FIRENZE');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('GANG CRIMINALI');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('GIALLO');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('HORROR');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('INCONTRO');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('INCOSCIENZA GIOVANILE');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('INDAGINE');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('INQUISIZIONE');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('INTEGRAZIONE RAZZIALE');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('INTROSPEZIONE');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('IRA');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('IRLANDA');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('IRONIA');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('ITALIA ANNI ’60');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('ITALIANIZZAZIONE FORZATA');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('LINGUAGGIO SEGRETO');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('LOTTA PER I DIRITTI');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('LOTTA TRA BENE E MALE');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('MAGIA');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('MISTERO');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('MISTERO DEL PASSATO');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('MODA');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('MONDO DELL’EDITORIA');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('OBIETTIVI');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('PERDITA DELLE RADICI');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('PREGIUDIZI');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('PROTAGONISTI GIOVANI');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('RACCONTI');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('RACKET DELLA PROSTITUZIONE');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('RAPIMENTO');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('RAPPORTI FAMIGLIARI');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('RAPPORTI FAMILIARI');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('RICERCA DI UNA CURA');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('RICERCA DI UN''IDENTITÀ');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('ROTTURA DELLE CONVENZIONI');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('SEGREGAZIONE RAZZIALE');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('SFIDA');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('SOCIETÀ INGLESE PRIMI ‘900');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('SOPRAVVIVENZA');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('SPARIZIONI');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('STORIA D’AMORE');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('STORIA VERA');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('STORICO');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('TENSIONI CON L’INGHILTERRA');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('ULTIMO ESSERE UMANO');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('USA ANNI ’50');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('VAMPIRI');
INSERT IGNORE INTO GAL_paroleChiave (parola) VALUES ('VENEZIA E I TURCHI');

INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 11, id FROM GAL_paroleChiave WHERE parola = 'CRESCITA';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 11, id FROM GAL_paroleChiave WHERE parola = 'INCONTRO';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 11, id FROM GAL_paroleChiave WHERE parola = 'INTROSPEZIONE';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 11, id FROM GAL_paroleChiave WHERE parola = 'AVVENTURA';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 11, id FROM GAL_paroleChiave WHERE parola = 'OBIETTIVI';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 11, id FROM GAL_paroleChiave WHERE parola = 'COMPRENSIONE DELL’ALTRO';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 73, id FROM GAL_paroleChiave WHERE parola = 'RACCONTI';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 73, id FROM GAL_paroleChiave WHERE parola = 'MONDO DELL’EDITORIA';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 73, id FROM GAL_paroleChiave WHERE parola = 'IRONIA';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 78, id FROM GAL_paroleChiave WHERE parola = 'STORICO';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 78, id FROM GAL_paroleChiave WHERE parola = 'ANTISEMITISMO';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 78, id FROM GAL_paroleChiave WHERE parola = 'VENEZIA E I TURCHI';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 78, id FROM GAL_paroleChiave WHERE parola = 'BERNARDINO DA FELTRE';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 81, id FROM GAL_paroleChiave WHERE parola = 'STORIA D’AMORE';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 81, id FROM GAL_paroleChiave WHERE parola = 'SOCIETÀ INGLESE PRIMI ‘900';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 81, id FROM GAL_paroleChiave WHERE parola = 'FIRENZE';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 81, id FROM GAL_paroleChiave WHERE parola = 'ROTTURA DELLE CONVENZIONI';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 83, id FROM GAL_paroleChiave WHERE parola = 'USA ANNI ’50';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 83, id FROM GAL_paroleChiave WHERE parola = 'CRESCITA';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 83, id FROM GAL_paroleChiave WHERE parola = 'RAPPORTI FAMIGLIARI';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 83, id FROM GAL_paroleChiave WHERE parola = 'CONFLITTO RAZZIALE';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 83, id FROM GAL_paroleChiave WHERE parola = 'MISTERO DEL PASSATO';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 83, id FROM GAL_paroleChiave WHERE parola = 'CRESCITA';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 87, id FROM GAL_paroleChiave WHERE parola = 'DISTOPICO';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 87, id FROM GAL_paroleChiave WHERE parola = 'HORROR';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 87, id FROM GAL_paroleChiave WHERE parola = 'VAMPIRI';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 87, id FROM GAL_paroleChiave WHERE parola = 'ULTIMO ESSERE UMANO';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 87, id FROM GAL_paroleChiave WHERE parola = 'SOPRAVVIVENZA';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 87, id FROM GAL_paroleChiave WHERE parola = 'RICERCA DI UNA CURA';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 93, id FROM GAL_paroleChiave WHERE parola = 'STORICO';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 93, id FROM GAL_paroleChiave WHERE parola = 'CINA XIX SEC.';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 93, id FROM GAL_paroleChiave WHERE parola = 'AMICIZIA';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 93, id FROM GAL_paroleChiave WHERE parola = 'LINGUAGGIO SEGRETO';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 93, id FROM GAL_paroleChiave WHERE parola = 'CONDIZIONE FEMMINILE';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 95, id FROM GAL_paroleChiave WHERE parola = 'BOLZANO ANNI ’30';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 95, id FROM GAL_paroleChiave WHERE parola = 'ITALIANIZZAZIONE FORZATA';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 95, id FROM GAL_paroleChiave WHERE parola = 'PERDITA DELLE RADICI';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 95, id FROM GAL_paroleChiave WHERE parola = 'ESILIO';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 101, id FROM GAL_paroleChiave WHERE parola = 'AMERICA ANNI ’60';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 101, id FROM GAL_paroleChiave WHERE parola = 'DOMESTICHE DI COLORE';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 101, id FROM GAL_paroleChiave WHERE parola = 'EMANCIPAZIONE FEMMINILE';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 104, id FROM GAL_paroleChiave WHERE parola = 'AMERICA ANNI ’70';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 104, id FROM GAL_paroleChiave WHERE parola = 'INTEGRAZIONE RAZZIALE';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 104, id FROM GAL_paroleChiave WHERE parola = 'GANG CRIMINALI';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 104, id FROM GAL_paroleChiave WHERE parola = 'DELITTI';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 104, id FROM GAL_paroleChiave WHERE parola = 'SPARIZIONI';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 113, id FROM GAL_paroleChiave WHERE parola = 'ITALIA ANNI ’60';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 113, id FROM GAL_paroleChiave WHERE parola = 'ESODO DA SUD A NORD';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 113, id FROM GAL_paroleChiave WHERE parola = 'CONDIZIONE INFANTILE';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 113, id FROM GAL_paroleChiave WHERE parola = 'RAPPORTI FAMILIARI';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 113, id FROM GAL_paroleChiave WHERE parola = 'CARCERE';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 131, id FROM GAL_paroleChiave WHERE parola = 'DELITTO';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 131, id FROM GAL_paroleChiave WHERE parola = 'AMERICA ANNI ’50';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 131, id FROM GAL_paroleChiave WHERE parola = 'SEGREGAZIONE RAZZIALE';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 131, id FROM GAL_paroleChiave WHERE parola = 'LOTTA PER I DIRITTI';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 134, id FROM GAL_paroleChiave WHERE parola = 'FANTASY';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 134, id FROM GAL_paroleChiave WHERE parola = 'LOTTA TRA BENE E MALE';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 134, id FROM GAL_paroleChiave WHERE parola = 'MAGIA';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 134, id FROM GAL_paroleChiave WHERE parola = 'AMORE';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 134, id FROM GAL_paroleChiave WHERE parola = '1° DI UNA TRILOGIA';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 137, id FROM GAL_paroleChiave WHERE parola = 'STORIA VERA';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 137, id FROM GAL_paroleChiave WHERE parola = 'RACKET DELLA PROSTITUZIONE';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 137, id FROM GAL_paroleChiave WHERE parola = 'AMORE MATERNO';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 137, id FROM GAL_paroleChiave WHERE parola = 'RICERCA DI UN''IDENTITÀ';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 149, id FROM GAL_paroleChiave WHERE parola = 'IRLANDA';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 149, id FROM GAL_paroleChiave WHERE parola = 'PROTAGONISTI GIOVANI';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 149, id FROM GAL_paroleChiave WHERE parola = 'TENSIONI CON L’INGHILTERRA';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 149, id FROM GAL_paroleChiave WHERE parola = 'IRA';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 161, id FROM GAL_paroleChiave WHERE parola = 'CAMBIAMENTO';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 161, id FROM GAL_paroleChiave WHERE parola = 'RAPPORTI FAMILIARI';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 161, id FROM GAL_paroleChiave WHERE parola = 'AMICIZIA';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 161, id FROM GAL_paroleChiave WHERE parola = 'SFIDA';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 161, id FROM GAL_paroleChiave WHERE parola = 'INCOSCIENZA GIOVANILE';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 171, id FROM GAL_paroleChiave WHERE parola = 'COMPRENSIONE DI SE’';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 171, id FROM GAL_paroleChiave WHERE parola = 'PREGIUDIZI';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 171, id FROM GAL_paroleChiave WHERE parola = 'AMICIZIA';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 171, id FROM GAL_paroleChiave WHERE parola = 'MODA';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 183, id FROM GAL_paroleChiave WHERE parola = 'LOTTA PER I DIRITTI';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 183, id FROM GAL_paroleChiave WHERE parola = 'SEGREGAZIONE RAZZIALE';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 190, id FROM GAL_paroleChiave WHERE parola = 'STORICO';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 190, id FROM GAL_paroleChiave WHERE parola = 'BARCELLONA DEL XIV SEC';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 190, id FROM GAL_paroleChiave WHERE parola = 'CONVIVENZA';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 190, id FROM GAL_paroleChiave WHERE parola = 'INQUISIZIONE';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 192, id FROM GAL_paroleChiave WHERE parola = 'GIALLO';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 192, id FROM GAL_paroleChiave WHERE parola = 'RAPIMENTO';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 192, id FROM GAL_paroleChiave WHERE parola = 'MISTERO';


INSERT IGNORE INTO GAL_libriConParoleChiave (idLibro, idParolaChiave)
SELECT 192, id FROM GAL_paroleChiave WHERE parola = 'INDAGINE';

-- duplicazione di parola chiave 'AMORE'
UPDATE GAL_libriConParoleChiave SET idParolaChiave = 1 WHERE id = 521;
DELETE FROM GAL_paroleChiave WHERE id = 299;

UPDATE GAL_libriConParoleChiave SET idParolaChiave = 1 WHERE id = 568;
DELETE FROM GAL_paroleChiave WHERE id = 329;

-- duplicazione di parola chiave 'CRESCITA'
UPDATE GAL_libriConParoleChiave SET idParolaChiave = 6 WHERE id = 525;
DELETE FROM GAL_paroleChiave WHERE id = 301;

-- duplicazione di parola chiave 'PRIMI AMORI'
UPDATE GAL_libriConParoleChiave SET idParolaChiave = 11 WHERE id = 672;
UPDATE GAL_libriConParoleChiave SET idParolaChiave = 11 WHERE id = 753;
DELETE FROM GAL_paroleChiave WHERE id = 382;

-- duplicazione di parola chiave 'SEPARAZIONE'
UPDATE GAL_libriConParoleChiave SET idParolaChiave = 5 WHERE id = 549;
DELETE FROM GAL_paroleChiave WHERE id = 317;

-- cancellazione degli autori duplicati 
DELETE FROM GAL_autori WHERE id IN (175, 177, 139, 133, 169, 57, 172);

-- 1. "Il volo di Alice" – Zita Dazzi
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Il volo di Alice'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Zita Dazzi')
);

-- 2. "Red" – Kerstin Gier
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Red'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Kerstin Gier')
);

-- 3. "Ragazzi selvaggi" – Luca Azzolini
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Ragazzi selvaggi'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Luca Azzolini')
);

-- 4. "Leviathan" – Scott Westerfeld
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Leviathan'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Scott Westerfeld')
);

-- 5. "Nodi al pettine" – Marie-Aude Murail
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Nodi al pettine'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Marie-Aude Murail')
);

-- 6. "Oh, boy" – Marie-Aude Murail
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Oh, boy'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Marie-Aude Murail')
);

-- 7. "Fat boy swim" – Catherine Forde
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Fat boy swim'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Catherine Forde')
);

-- 8. "Il principe della nebbia" – Ruiz Zafon Carlos
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Il principe della nebbia'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Ruiz Zafon Carlos')
);

-- 9. "Le luci di settembre" – Ruiz Zafon Carlos
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Le luci di settembre'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Ruiz Zafon Carlos')
);

-- 10. "L’erede di Hastur" – Marion Zimmer Bradley
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'L’erede di Hastur'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Marion Zimmer Bradley')
);

-- 11. "Sempre tornare" – Daniele Mencarelli
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Sempre tornare'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Daniele Mencarelli')
);

-- 12. "Lo specchio dei desideri" – Jonathan Coe
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Lo specchio dei desideri'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Jonathan Coe')
);

-- 13. "Cose più grandi di noi" – Scianna Giorgio
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Cose più grandi di noi'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Scianna Giorgio')
);

-- 14. "Qualcosa c’inventeremo" – Scianna Giorgio
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Qualcosa c’inventeremo'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Scianna Giorgio')
);

-- 15. "Melody" – Sharon M. Draper
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Melody'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Sharon M. Draper')
);

-- 16. "Stardust" – Neil Gaiman
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Stardust'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Neil Gaiman')
);

-- 17. "Il figlio del cimitero" – Neil Gaiman
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Il figlio del cimitero'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Neil Gaiman')
);

-- 18. "Nessun dove" – Neil Gaiman
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Nessun dove'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Neil Gaiman')
);



INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Vivavoce'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Ferrara Antonio')
);

-- 20. "A casa tutto bene" – Ferrara Antonio
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'A casa tutto bene'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Ferrara Antonio')
);

-- 21
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Ladra di jeans'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Facchini Giuliana')
);

-- 22. "Il segreto del Grace college" – Krystyna Kuhn
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Il segreto del Grace college'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Krystyna Kuhn')
);

-- 23. "Cambio di stagione" – Nanetti Angela
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Cambio di stagione'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Nanetti Angela')
);

-- 24
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'I randagi'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Nanetti Angela')
);
	
-- 25
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La ragazza con le scarpe di tela'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Heurtier Annelise')
);

-- 26
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'L’età dei sogni'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Sénéchal Jean Francois')
);


-- 28. "Amici" - Kazumi Yumoto
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Amici'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Kazumi Yumoto')
);

-- 29. "Poster girl" – Roth Veronica
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Poster girl'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Roth Veronica')
);

-- 30. "L’onda" – Strasser Todd
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'L’onda'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Strasser Todd')
);

-- 31. "La lunga vita di Marianna Ucria" – Maraini Dacia
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    31,
    (SELECT id FROM GAL_autori WHERE nominativo = 'Maraini Dacia')
);

-- 32. "La collina" – Delogu Andrea
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La collina'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Delogu Andrea')
);

-- 33. "La Compagnia dei Celestini" – Benni Stefano
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La Compagnia dei Celestini'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Benni Stefano')
);

-- 34. "Pomodori verdi fritti…" – Fannie Flagg
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Pomodori verdi fritti…'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Flagg Fannie')
);

-- 35. "Monaco" – Harris Robert
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Monaco'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Harris Robert')
);

-- 36. "Abbandonare un gatto" – Murakami Haruki
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Abbandonare un gatto'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Murakami Haruki')
);


-- 37 "La sfida" – Boyne John
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La sfida'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Boyne John')
);

-- 38. "Book jumpers" – Glaeser Mechthild
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Book jumpers'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Glaeser Mechthild')
);

-- 39. "La mia vita secondo me" – Carey Anna
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La mia vita secondo me'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Carey Anna')
);

-- 40
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Bambini di cristallo'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Ohlsson Kristina')
);

-- 41. "La classe" – Dalcher Christina
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La classe'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Dalcher Christina')
);

-- 42. "La leggenda di Scarlett&Browne" – Stroud Jonathan
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La leggenda di Scarlett&Browne'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Stroud Jonathan')
);

-- 43. "L’amuleto di Samarcanda" – Stroud Jonathan
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'L’amuleto di Samarcanda'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Stroud Jonathan')
);

-- 44. "L’allieva" – Gazzola Alessia
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'L’allieva'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Gazzola Alessia')
);

-- 45. "La scatola dei bottoni di Gwendy" – King Stephen
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La scatola dei bottoni di Gwendy'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'King Stephen')
);

-- 46. "Carrie" – King Stephen
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Carrie'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'King Stephen')
);

-- 47. "Stagioni diverse" – King Stephen
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Stagioni diverse'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'King Stephen')
);

-- 48. "I viaggi di Daniel Ascher" – Lévy Bertherat Déborah
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'I viaggi di Daniel Ascher'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Lévy Bertherat Déborah')
);

-- 49. "Il sole a mezzanotte" – Cook Trish
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Il sole a mezzanotte'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Cook Trish')
);

-- 50. "Fake falsi profili" – Merenda Adriana
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Fake falsi profili'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Merenda Adriana')
);



-- 51. "Un’estate da morire" – Lowry Lois
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Un’estate da morire'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Lowry Lois')
);

-- 52. "The giver Il donatore" – Lowry Lois
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    52,
    (SELECT id FROM GAL_autori WHERE nominativo = 'Lowry Lois')
);

-- 53. "L’albero delle bugie" – Hardinge Frances
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'L’albero delle bugie'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Hardinge Frances')
);

-- 54. "La voce delle ombre" – Hardinge Frances
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La voce delle ombre'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Hardinge Frances')
);

-- 55. "Domani interrogo" – Cenciarelli Gaja
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Domani interrogo'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Cenciarelli Gaja')
);

-- 56. "Nelle terre selvagge" – Paulsen Gary
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Nelle terre selvagge'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Paulsen Gary')
);

-- 57. "Sal" – Kitson Mick
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Sal'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Kitson Mick')
);

-- 58. "Le reginette" – Beauvais Clémentine
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Le reginette'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Beauvais Clémentine')
);

-- 59. "Annus mirabilis" – Brooks Geraldine
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Annus mirabilis'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Brooks Geraldine')
);

-- 60. "Iboy" – Brooks Kevin
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Iboy'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Brooks Kevin')
);

-- -------------------------------------------------------------------------
update GAL_libri set titolo='L’estate del coniglio nero' where id=61;
update GAL_libri set sinossi='È un’estate torrida e Pete ha già passato diverse settimane senza fare altro che ciondolare per casa. Fino a quando una telefonata gli cambia la vita per sempre. È Nicole, gli chiede di vedersi. Presto si separeranno, ognuno per la propria strada, il college, Parigi... Sarebbe bello incontrarsi per l’ultima volta con il gruppo dei vecchi amici, solo loro quattro: Pete, Nicole, Eric e Pauly. Pete le chiede di Raymond, anche lui è un vecchio amico, fa parte del gruppo. È vero, è un tipo strano, sembra vivere in un mondo tutto suo al cui centro c’è un coniglio nero; ma Pete gli è molto legato e vuole che sia con loro. Quella notte, però, quando si trovano al luna park, Raymond scompare. E anche Stella Ross, una ragazza del loro liceo diventata famosa. Tutti pensano che i due eventi siano collegati, che Raymond lo strano sia il colpevole. Pete vuole dimostrare a ogni costo che si sbagliano, ma quando segreti, rancori e vecchie gelosie mettono gli amici uno contro l’altro, anche le sue certezze cominciano a incrinarsi' where id=61;
-- ----------------------------------------------------------------------------

-- 61. "L’estate del coniglio nero" – Brooks Kevin
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'L’estate del coniglio nero'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Brooks Kevin')
);

-- 62. "L’incubo di Hill House" – Shirley Jackson
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'L’incubo di Hill House'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Shirley Jackson')
);

-- 63. "Bella mia" – Di Pietrantonio Donatella
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Bella mia'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Di Pietrantonio Donatella')
);

--
delete from GAL_libri where id=193;
--

-- 64. "L’Arminuta" – Di Pietrantonio Donatella
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'L’Arminuta'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Di Pietrantonio Donatella')
);

-- 65. "La diseducazione di Cameron Post" – Danforth Emily
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (65),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Danforth Emily')
);

-- 66. "Carne da macello" – Dawson Juno
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Carne da macello'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Dawson Juno')
);

-- 67. "La strada nell’ombra" – Donnelly Jennifer
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La strada nell’ombra'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Donnelly Jennifer')
);

-- 68. "Una voce dal lago" – Donnelly Jennifer
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Una voce dal lago'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Donnelly Jennifer')
);

-- 69. "Le emozioni difettose" – Halse Anderson Laurie
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Le emozioni difettose'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Halse Anderson Laurie')
);

-- 70. "Speak le parole non dette" – Halse Anderson Laurie
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (70),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Halse Anderson Laurie')
);

-- 71. "Febbre" – Halse Anderson Laurie
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Febbre'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Halse Anderson Laurie')
);

-- 72. "Rebel: il deserto in fiamme" – Hamilton Alwyn
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Rebel: il deserto in fiamme'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Hamilton Alwyn')
);

-- 73. "Ogni riferimento è puramente casuale" – Manzini Antonio
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Ogni riferimento è puramente casuale'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Manzini Antonio')
);

-- 74. "L’uomo delle castagne" – Sveistrup Soren
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'L’uomo delle castagne'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Sveistrup Soren')
);

-- 75. "V2" – Harris Robert
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'V2'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Harris Robert')
);

-- 76. "Pompei" – Harris Robert
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Pompei'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Harris Robert')
);

--
update GAL_libri set titolo = 'Se l’acqua ride' where id=77;
--

-- 77. "Se l’acqua ride" – Malaguti Paolo
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Se l’acqua ride'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Malaguti Paolo')
);

-- 78. "Il rogo della Repubblica" – Molesini Andrea
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Il rogo della Repubblica'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Molesini Andrea')
);

-- 79. "La clinica Riposo&Pace" – Recami Francesco
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La clinica Riposo&Pace'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Recami Francesco')
);

-- 80. "Le madri non dormono mai" – Marone Lorenzo
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Le madri non dormono mai'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Marone Lorenzo')
);

-- 81. "Camera con vista" – Forster Edward Morgan
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (81),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Forster Edward Morgan')
);

-- 82. "La ragazza della palude" – Owens Delia
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (82),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Owens Delia')
);

-- 83. "La sottile linea scura" – Lansdale Joe R.
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La sottile linea scura'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Lansdale Joe R.')
);

-- 84. "Sei come sei" – Mazzucco Melania
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Sei come sei'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Mazzucco Melania')
);

-- 85. "Una sottile linea rosa" – Strada Annalisa
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Una sottile linea rosa'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Strada Annalisa')
);

-- 86. "La masseria delle allodole" – Arslan Antonia
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (86),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Arslan Antonia')
);

-- 87. "Io sono leggenda" – Matheson Richard
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (87),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Matheson Richard')
);

-- 88. "NEO la caduta del sole di ferro" – Bussi Michel
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'NEO la caduta del sole di ferro'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Bussi Michel')
);

-- 89. "Eleanor Oliphant sta benissimo" – Honeyman Gail
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (89),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Honeyman Gail')
);

-- 90. "I custodi di Slade house" – Mitchell David
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'I custodi di Slade house'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Mitchell David')
);

-- 91. "Il mistero del London Eye" – Dowd Sioban
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Il mistero del London Eye'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Dowd Sioban')
);

-- 92. "Il riscatto di Dond" – Dowd Sioban
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Il riscatto di Dond'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Dowd Sioban')
);

-- 93. "Fiore di neve e il ventaglio segreto" – See Lisa
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Fiore di neve e il ventaglio segreto'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'See Lisa')
);

-- 94. "Aggiustare l’universo" – Romagnolo Raffaella
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Aggiustare l’universo'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Romagnolo Raffaella')
);

-- 95. "Sotto un sole diverso" – Lothar Ernst
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Sotto un sole diverso'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Lothar Ernst')
);

-- 96. "La cacciatrice" – Quinn Kate
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La cacciatrice'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Quinn Kate')
);

-- 97. "A fuoco lento" – Kerr Philip
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'A fuoco lento'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Kerr Philip')
);

-- 98. "Le rive della collera" – Laurent Caroline
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Le rive della collera'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Laurent Caroline')
);

-- 99. "La monaca" – Agnello Hornby Simonetta
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La monaca'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Agnello Hornby Simonetta')
);

-- 100. "La vergine napoletana" – Pederiali Giuseppe
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La vergine napoletana'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Pederiali Giuseppe')
);

-- 101. "The Help" – Stockett Kathryne
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (101),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Stockett Kathryne')
);

-- 102. "La canzone di Achille" – Miller Madeline
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La canzone di Achille'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Miller Madeline')
);

-- 103. "Il gigante sepolto" – Ishiguro Kazuo
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Il gigante sepolto'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Ishiguro Kazuo')
);

-- 104. "Piccoli atti di misericordia" – Lehane Dennis
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Piccoli atti di misericordia'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Lehane Dennis')
);

-- 105. "Terra crudele" – Weisgarber Ann
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Terra crudele'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Weisgarber Ann')
);

-- 106. "Longbourn house" – Backer Jo
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Longbourn house'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Backer Jo')
);

-- 107. "Il viaggio della strega bambina" – Rees Celia
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Il viaggio della strega bambina'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Rees Celia')
);

-- 108. "Pirate" – Rees Celia
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Pirate'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Rees Celia')
);

-- 109. "Il braccialetto" – Levi Lia
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Il braccialetto'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Levi Lia')
);

-- 110. "I figli del lupo" – Dowswell Paul
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'I figli del lupo'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Dowswell Paul')
);

-- 111. "Olympia indagine ai giochi ellenici" – Comastri Montanari Danila
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Olympia indagine ai giochi ellenici'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Comastri Montanari Danila')
);



-- 112. "Più veloce del vento" – Percivale Tommaso
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Più veloce del vento'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Percivale Tommaso')
);

-- 113. "L’ultimo arrivato" – Balzano Marco
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'L’ultimo arrivato'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Balzano Marco')
);

-- 114. "Timeline" – Chrichton Michael
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (114),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Chrichton Michael')
);

-- 115. "Aristotele detective" – Doody Margareth
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Aristotele detective'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Doody Margareth')
);

-- 116. "Aristotele e l favola dei 2 corvi bianchi" – Doody Margareth
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Aristotele e l favola dei 2 corvi bianchi'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Doody Margareth')
);

-- 117. "L’ospite" – Meyer Stephenie
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'L’ospite'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Meyer Stephenie')
);

-- 118. "Dormire in un mare di stelle" – Paolini Christopher
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Dormire in un mare di stelle'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Paolini Christopher')
);

-- 119. "Blackwater v.1 La piena" – McDowell Michael
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Blackwater v.1 La piena'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'McDowell Michael')
);

-- 120. "La canzone di Orfeo" – Almond David
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La canzone di Orfeo'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Almond David')
);

-- 121. "Dark web" – Magnoli Sara
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Dark web'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Magnoli Sara')
);

-- 122. "Mosquitoland" – Arnold David
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Mosquitoland'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Arnold David')
);

-- 132. "Tutte le bugie che ho detto" – Blundell Judy
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Tutte le bugie che ho detto'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Blundell Judy')
);

-- 124. "Colpa delle stelle" – Green John
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (124),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Green John')
);


-- 125. Teorema Catherine – Green John
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Teorema Catherine'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Green John')
);

-- 126. La legione scomparsa – Sutcliff Rosemary
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La legione scomparsa'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Sutcliff Rosemary')
);

-- 127. Un anno terribile – Fante John
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Un anno terribile'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Fante John')
);

-- 128. Io Emanuela – Strada Annalisa
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Io Emanuela'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Strada Annalisa')
);

-- 129. Agata e la pietra nera – LeGuin Ursula
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Agata e la pietra nera'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'LeGuin Ursula')
);

-- 130. Zio vampiro – Grant Cynthia D.
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Zio vampiro'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Grant Cynthia D.')
);

-- 131. I segreti di Sunnylakes – Vesper Inga
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'I segreti di Sunnylakes'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Vesper Inga')
);

-- 132. La figlia del mercante di seta – Gardner Sally
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La figlia del mercante di seta'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Gardner Sally')
);

-- 133. Il ragazzo del fiume – Bowler Tim
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Il ragazzo del fiume'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Bowler Tim')
);

-- 134. Tenebre e ossa – Bardugo Leigh
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Tenebre e ossa'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Bardugo Leigh')
);

-- 135. I ribelli di giugno – Antonini Christian
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'I ribelli di giugno'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Antonini Christian')
);

-- 136. La strada fredda – Vermot Thibault
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La strada fredda'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Vermot Thibault')
);

-- 137. Addio, a domani – Efionayi Sabrina
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Addio, a domani'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Efionayi Sabrina')
);

-- 138. Un viaggio chiamato casa – Stratton Alan
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Un viaggio chiamato casa'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Stratton Alan')
);

-- 139. Fangirl – Rowell Rainbow
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Fangirl'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Rowell Rainbow')
);

-- 140. Pesche – Anderson Jodi Lynn
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Pesche'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Anderson Jodi Lynn')
);

-- 141. Il castello di Otranto – Walpole Horace
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Il castello di Otranto'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Walpole Horace')
);

-- 142. Fidanzati dell’inverno – Dabos Christelle
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Fidanzati dell’inverno'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Dabos Christelle')
);

update GAL_autori set nominativo = 'Lore Pittacus' where id=117;

-- 143. Sono il numero quattro – Lore Pittacus
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (143),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Lore Pittacus')
);

-- 144. Ogni giorno – Levithan David
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Ogni giorno'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Levithan David')
);

-- 145. Te la sei cercata – O’Neill Louise
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Te la sei cercata'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'O’Neill Louise')
);

update GAL_libri set titolo='Il futuro' where id=146;

-- 146. Il futuro – Alderman Naomi
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Il futuro'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Alderman Naomi')
);

-- 147. Il diario di uno sfigato innamorato – Wizner Jake
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Il diario di uno sfigato innamorato'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Wizner Jake')
);

-- 148. Tra cielo e terra – McLain Paula
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Tra cielo e terra'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'McLain Paula')
);

-- 149. Come ogni cosa in questo paese – McCann Colum
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Come ogni cosa in questo paese'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'McCann Colum')
);

-- 150. Gli undici inganni – Gold Robert
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Gli undici inganni'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Gold Robert')
);

-- 151. Le montagne ghiacciate di Kolyma – Davidson Lionel
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Le montagne ghiacciate di Kolyma'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Davidson Lionel')
);


-- 152. Junk storia d’amore e perdizione – Burgess Melvin
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Junk storia d’amore e perdizione'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Burgess Melvin')
);

-- 153. Febbre gialla – Lucarelli Carlo
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Febbre gialla'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Lucarelli Carlo')
);

-- 154. Ombre sulla sabbia – Chambers Aidan
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Ombre sulla sabbia'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Chambers Aidan')
);

-- 155. The frozen boy – Sgardoli Guido
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'The frozen boy'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Sgardoli Guido')
);

-- 156. La leggenda di Otori – Hearn Lian
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La leggenda di Otori'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Hearn Lian')
);

-- 157. Ci sei solo tu – Camerini Valentina
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Ci sei solo tu'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Camerini Valentina')
);

-- 158. Questa non è la fine – Baker Chandler
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Questa non è la fine'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Baker Chandler')
);

-- 159. Smart – Slater Kim
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Smart'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Slater Kim')
);

-- 160. Coraline – Gaiman Neil
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Coraline'),
    (13)
);

-- 161. Cercando l’onda – Vick Christipher
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Cercando l’onda'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Vick Christipher')
);

-- 162. Some girls do – Dugan Jennifer
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Some girls do'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Dugan Jennifer')
);


-- 163
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'L’istante perfetto'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Asher Jay')
);

-- 164
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Il solito normalissimo caos'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Creech Sharon')
);

-- 165
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Il mago'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Le Guin Ursula K.')
);

-- 166
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La febbre zombie'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Ohlsson Kristina')
);

-- 167
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Carmilla la vampira'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Le Fanu Joseph Sheridan')
);

-- 168
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Senza dirlo a nessuno'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Scianna Giorgio')
);


-- 169. Gli anni di luce – Dazzi Zita
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Gli anni di luce'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Zita Dazzi')
);

-- 170. L’ora di pietra – Oggero Margherita
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'L’ora di pietra'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Oggero Margherita')
);

-- 171. Il principe e la sarta – Wang Jen
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Il principe e la sarta'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Wang Jen')
);

-- 173. Speak il graphic – Carroll, Emily-Halse Anderson Laurie
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Speak il graphic'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Carroll Emily')
);
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Speak il graphic'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Halse Anderson Laurie')
);

-- 174. Fangirl il manga v. 1-2 – Maggs, Sam-Nam, Gabi-Rowell, Rainbow
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Fangirl il manga v. 1-2'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Sam Maggs')
);
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Fangirl il manga v. 1-2'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Rowell Rainbow')
);

-- 175. Primo amore – Panetta, Kevin-Ganucheau, Savannah
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Primo amore'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Kevin Panetta')
);
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Primo amore'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Savannah Ganucheau')
);

-- 176. Assassinio sull’Orient Express – Von Eckartsberg, Benjamin- Chaiko
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Assassinio sull’Orient Express'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Benjamin Von Eckartsberg')
);
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Assassinio sull’Orient Express'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Chaiko')
);

-- 177. Il cane che guarda le stelle – Takashi Murakami
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Il cane che guarda le stelle'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Takashi Murakami')
);

-- 178. Le piccole vittorie – Roy Yvon
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Le piccole vittorie'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Roy Yvon')
);

-- 179
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Menta'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Galli Christian')
);

-- 180
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Quartieri lontani'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Taniguchi Jiro')
);

-- 181
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Angela Davis'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Pesce Mariapaola')
);

-- 182 
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La guerra di Catherine'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Billet Julia')
);

-- 183
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Nera: Claudette Colvin'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Emilie Plateau')
);

-- 184
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Girotondo'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Rossi Sergio')
);

-- 185
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Il porto proibito'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Radice Teresa')
);

-- 186
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La mia ultima estate con Cass'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Crilley Mark')
);

-- 187
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Il buio oltre la siepe'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Fordham Fred')
);

-- 188
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La ragazza del mare'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Knox Ostertag Molly')
);

-- 189
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (189),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Irène Nemirovsky')
);

-- 190
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La cattedrale del mare'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Falcones Ildefonso')
);

-- 191
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'La ragazza nella nebbia'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Carrisi Donato')
);

-- 192
delete from GAL_libri where id = 192;

-- 194. 
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Nel mare ci sono i coccodrilli'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Geda Fabio')
);
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
VALUES (
    (SELECT id FROM GAL_libri WHERE titolo = 'Nel mare ci sono i coccodrilli'),
    (SELECT id FROM GAL_autori WHERE nominativo = 'Akbari Enaiatollah')
);

-- rinomino tutti i file copertina
UPDATE GAL_libri
SET urlCopertina = REPLACE(urlCopertina, '.png', '.jpeg')
WHERE urlCopertina LIKE '%.png';

-- 17/05/2025: Aggiungo a tutti i film un autore vuoto

-- Step 1: seleziona gli ID dei libri in una temporary table
CREATE TEMPORARY TABLE libri_selezionati AS
SELECT id FROM GAL_libri WHERE film = 1;
-- Step 2: inserisci il nuovo autore con nominativo vuoto
INSERT INTO GAL_autori (nominativo) VALUES ('');
-- Step 3: ottieni l'ID appena inserito (ultimo autore)
SET @idNuovoAutore = LAST_INSERT_ID();
-- Step 4: collega ogni libro selezionato con il nuovo autore
INSERT INTO GAL_libriConAutori (idLibro, idAutore)
SELECT id, @idNuovoAutore FROM libri_selezionati;
-- [Opzionale] elimina la temporary table
DROP TEMPORARY TABLE IF EXISTS libri_selezionati;

-- 17/05/2025: Collego l'autore 19 al libro con id 27
insert into GAL_libriConAutori(idLibro, idAutore) value (27,19);




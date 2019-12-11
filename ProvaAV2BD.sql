Drop database espetaculo;
Create database if not exists espetaculo ;
Use espetaculo;

create table Artista(
	codArt int primary key,
	nome varchar(70) not null,
	idade date
);

create table Diretor(
	codDir int primary key,
	nome varchar(70) not null
);

create table Cidade(
	cep int primary key,
    nome varchar(70) not null
);

create table Teatro(
	codTea int primary key,
    nome varchar(70) not Null,
    endereco varchar(90),
    cep int,
    foreign key(cep) references Cidade (cep)
);


create table Premio(
	codPre int primary key,
    nome varchar(70) not null
);

create table Espetaculo(
	codEsp int primary key,
    nome varchar(70) not null,
    valIng float not null,
    codDir int,
    foreign key (codDir) references Diretor (codDir)
);

create table Participa(
	codArt int,
    codEsp int,
    papel varchar(70) not null,
    foreign key(codArt) references Artista (codArt),
    foreign key(codEsp) references Espetaculo (codEsp)
);

create table Apresentacao(
	codEsp int ,
    codTea int,
    dataInic date,
    qtdDias int,
    foreign key(codEsp) references Espetaculo (codEsp)
);

create table Homenagem(
	codArt int,
    codPre int,
    ano date,
    foreign key(codArt) references Artista (codArt),
    foreign Key (codPre) references Premio (codPre)
);

Show tables;
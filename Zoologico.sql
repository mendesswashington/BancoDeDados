Create Database If Not Exists Zoologico;
Use Zoologico;

Create Table Tipo(
	CTipo int not null auto_increment,
    descricao varchar(100) unique,
    primary key (CTipo)
);

Create Table Animal(
	CAnimal int not null  auto_increment,
    nome varchar(70) unique,
    CTipo int not null,
    primary key(CAnimal),
    foreign key(CTipo) references Tipo (CTipo)
);

Create Table Funcionario(
	CFuncionario int not null auto_increment,
    nome varchar(70),
    especialidade varchar(70) default "tratador de animais",
    primary key(CFuncionario)
);

Create Table Responsavel(
	CFuncionario int not null,
    CAnimal int not null,
    foreign key(CFuncionario) references Funcionario(CFuncionario),
    foreign key(CAnimal) references Animal (CAnimal)
);
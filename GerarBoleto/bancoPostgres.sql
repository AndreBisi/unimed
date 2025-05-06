create table tbTitulo(
  numTit         integer       not null,
  codPessoa      integer       not null,
  idTitulo       integer       not null,
  dataVencimento date          not null,
  dataEmissao    date          not null,
  nrDocBco       varchar(40)   not null,
  valSaldo       decimal(15,2) default 0,

  CONSTRAINT tbTitulo_pkey PRIMARY KEY (numTit),

  CONSTRAINT fk_tbTitulo_tbPessoa FOREIGN KEY (codPessoa) REFERENCES tbPessoa(codPessoa) ON DELETE cascade
);

create table tbPessoa(
  codPessoa      integer       not null,
  nomePessoa     varChar(80)   not null,
  documento      varchar(14)   not null,

  constraint tbPessoa_pkey primary key ( codPessoa )
);

create table tbContrato(
  codAdmin       integer       not null,
  numContr       integer       not null,
  codUsuario     integer       not null,
  contratante    varchar(80)   not null,
  codPessoa      integer       not null,

  constraint tbContrato_pkey primary key ( codAdmin, numContr, codUsuario ),

  constraint FK_tbContrato_tbPessoa foreign key ( codPessoa ) references tbPessoa( codPessoa ) on delete cascade  
);



create table tbEmail(
  codPessoa      integer       not null,
  eMail          varChar(255)  default null,

  constraint FK_tbEmail_tbPessoa foreign key ( codPessoa ) references tbPessoa( codPessoa ) on delete cascade
);

create table tbEndereco(
  codPessoa      integer       not null,
  endereco       varChar(120)  not null,
  nro            varChar(30)   not null,
  numero         integer       default null,
  cep            varChar(15)   default null,
  nomeMunicipio  varChar(80)   not null,
  uf             varChar(2)    not null,
  bairro         varChar(80)   default null,
  complemento    varChar(80)   default null,

  constraint tbEndereco_pkey primary key ( codPessoa ),

  CONSTRAINT fk_tbEndereco_tbPessoa FOREIGN KEY (codPessoa) REFERENCES tbPessoa (codPessoa) ON DELETE cascade
);
  

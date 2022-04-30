DROP TABLE Post_Cumple_Req;
DROP TABLE Postulacion;
DROP TABLE Interesado;
DROP TABLE RequisitoOferta;
DROP TABLE OfertaTrabajo;
DROP TABLE Oferente;

CREATE TABLE Oferente(
	rut 		number(12)	not null primary key,
	razonSocial	varchar(50)	not null unique,
	nombre		varchar(50)	not null unique,
	direccion	varchar(100)	,
	fechaIngreso	date		not null
);
CREATE TABLE OfertaTrabajo(
	nroReferencia 	number(10)	not null primary key, 
	rutOferente 	number(12)	not null references Oferente,
	puesto		varchar(30)	not null,
	disponibleDesde	date		not null,
	cantvacantes	number(3)	not null check (cantvacantes > 0),
	disponible 	char(1) 	not null check (disponible in ('A','C') )
);
CREATE TABLE RequisitoOferta(
	nroReferencia 	number(10)	not null references OfertaTrabajo, 
	nroRequisito 	number(3)	not null, 
	excluyente 	char(1) 	not null check (excluyente in ('S','N') ),
	descripcion	varchar(100)	not null,
	primary key(nroReferencia,nroRequisito)
);
CREATE TABLE Interesado(
	ci 		number(8)	not null primary key,
	nombre		varchar(50)	not null,
	fNac		date		not null,
	sexo		char(1)		not null check (sexo in ('F','M') ),
	domicilio	varchar(100),
	cvPath		varchar(100)	not null unique
);
CREATE TABLE Postulacion(
	ci 		number(8)	not null references Interesado, 
	nroReferencia 	number(10)	not null references OfertaTrabajo,
	fechaPostulacion	date	not null,
	aspiraciones	number(5)	not null check (aspiraciones >= 0),
	primary key (ci, nroReferencia)
);
CREATE TABLE Post_Cumple_Req 
(	ci number(8) not null, 
	nroReferencia number(10) not null, 
	nroRequisito number(3) not null, 
	cumple char(1) not null	check (cumple in ('S','N') ), 
	primary key (ci, nroReferencia, nroRequisito), 
	foreign key (ci, nroReferencia) references Postulacion (ci, nroReferencia), 
	foreign key (nroReferencia, nroRequisito) references RequisitoOferta (nroReferencia, nroRequisito) 
);
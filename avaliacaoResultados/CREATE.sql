CREATE TABLE sac.dbo.FluxosProjeto (
	id int NOT NULL IDENTITY(1,1),
	idPronac int,
	estadoId int,
	orgao int,
	grupo int,
	idAgente int
)

CREATE TABLE sac.dbo.Fluxos (
	id int NOT NULL IDENTITY(1,1),
	descricao varchar(300) NOT NULL,
	CONSTRAINT Fluxos_PK PRIMARY KEY (id)
)

CREATE TABLE sac.dbo.Estados (
	id int NOT NULL IDENTITY(1,1),
	descricao varchar(300) NOT NULL,
	fluxoId int NOT NULL,
	proximo text,
	CONSTRAINT Estados_PK PRIMARY KEY (id),
	CONSTRAINT Estados_Fluxos_FK FOREIGN KEY (fluxoId) REFERENCES sac.dbo.Fluxos(id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
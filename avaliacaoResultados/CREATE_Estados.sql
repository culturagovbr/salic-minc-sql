CREATE TABLE sac.dbo.Estados (
	id int,	
	descricao varchar(300) NOT NULL,
	fluxoId int NOT NULL,
	proximo text,	
	CONSTRAINT Estados_Fluxos_FK FOREIGN KEY (fluxoId) REFERENCES sac.dbo.Fluxos(id)
)

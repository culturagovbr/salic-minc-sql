ALTER TABLE sac.dbo.Estados drop Estados_PK;

ALTER TABLE sac.dbo.Estados DROP COLUMN "id"; 

ALTER TABLE sac.dbo.Estados ADD "id" INT; 

delete from sac.dbo.Estados;

INSERT INTO sac.dbo.Estados (id,descricao,fluxoId,proximo,codigo) VALUES 
(4,'Aguardando Analise tecnica',1,'{"class":"AvaliacaoResultados_Events_Encaminhar","function":"run","path":"/modules/avaliacao-resultados/events/Encaminhar.php","proximo":[5]}','AR_01')
,(5,'Em Analise Tecnica',1,'{"class":"AvaliacaoResultados_Events_FinalizarParecer","path":"/modules/avaliacao-resultados/events/FinalizarParecer.php","proximo":[6,5,8]}','AR_02')
,(6,'Parecer Finalizado',1,'{"class":"AvaliacaoResultados_Events_Encaminhar","path":"/modules/avaliacao-resultados/events/Encaminhar.php","proximo":[9]}','AR_03')
,(7,'Fluxo Finalizado',1,NULL,NULL)
,(8,'Reencaminhado entre Tecnicos',1,'{"class":"AvaliacaoResultados_Events_Encaminhar","path":"/modules/avaliacao-resultados/events/Encaminhar.php","proximo":[8,6]}',NULL)
,(9,'Aguardando Assinaturas',1,'{"class":"AvaliacaoResultados_Events_Encaminhar","path":"/modules/avaliacao-resultados/events/AguardandoAssinatura.php","proximo":[]}',NULL)
,(10,'Analise Laudo Final',1,'{"class":"AvaliacaoResultados_Events_FinalizarLaudo","path":"/modules/avaliacao-resultados/events/FinalizarLaudo.php","proximo":[11]}',NULL)
,(11,'Aguardando Assinatura Laudo',1,NULL,NULL)
,(12,'Avaliação de Resultados Finalizada',1,NULL,NULL)
,(13,'Em Revisão',1,NULL,NULL)
;

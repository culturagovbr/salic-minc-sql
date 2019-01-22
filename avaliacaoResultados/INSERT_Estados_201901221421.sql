INSERT INTO SAC.dbo.Estados (id,descricao,fluxoId,proximo) VALUES 
(4,'Aguardando Analise tecnica',1,'{"id":4,"class":"AvaliacaoResultados_Events_Encaminhar","path":"/modules/avaliacao-resultados/events/Encaminhar.php","proximo":{"5":{"class":"AvaliacaoResultados_Events_Encaminhar","path":"/modules/avaliacao-resultados/events/Encaminhar.php"}}}')
,(5,'Em Analise Tecnica',1,'{"id":5,"class":"AvaliacaoResultados_Events_FinalizarParecer","path":"/modules/avaliacao-resultados/events/FinalizarParecer.php","proximo":{"5":{"class":"AvaliacaoResultados_Events_Encaminhar","path":"/modules/avaliacao-resultados/events/Encaminhar.php"},"6":{"class":"AvaliacaoResultados_Events_FinalizarParecer","path":"/modules/avaliacao-resultados/events/FinalizarParecer.php"}}}')
,(6,'Parecer Finalizado',1,'{"id":6,"class":"AvaliacaoResultados_Events_Encaminhar","path":"/modules/avaliacao-resultados/events/Encaminhar.php","proximo":{"5":{"class":"AvaliacaoResultados_Events_Devolver","path":"/modules/avaliacao-resultados/events/Devolver.php"},"13":{"class":"AvaliacaoResultados_Events_Encaminhar","path":"/modules/avaliacao-resultados/events/Encaminhar.php"}}}')
,(7,'Fluxo Finalizado',1,NULL)
,(15,'Aguardando Assinatura do Coordenador Geral no Parecer ',1,NULL)
,(9,'Aguardando Assinatura do Coordenador no Parecer',1,'{"class":"AvaliacaoResultados_Events_Encaminhar","path":"/modules/avaliacao-resultados/events/AguardandoAssinatura.php","proximo":[]}')
,(10,'Analise Laudo Final',1,'{"id":10,"proximo":{"5":{"class":"AvaliacaoResultados_Events_Devolver","path":"/modules/avaliacao-resultados/events/Devolver.php"},"14":{"class":"AvaliacaoResultados_Events_FinalizarLaudo","path":"/modules/avaliacao-resultados/events/FinalizarLaudo.php"}}}')
,(11,'Aguardando Assinatura do Diretor no Laudo Final',1,'{"id":11,"proximo":{"10":{"class":"AvaliacaoResultados_Events_Devolver","path":"/modules/avaliacao-resultados/events/Devolver.php"}}}')
,(12,'Avaliação de Resultados Finalizada',1,NULL)
,(14,'Aguardando Assinatura do Coordenador Geral no Laudo Final',1,'{"id":14,"proximo":{"10":{"class":"AvaliacaoResultados_Events_Devolver","path":"/modules/avaliacao-resultados/events/Devolver.php"}}}')
;
INSERT INTO SAC.dbo.Estados (id,descricao,fluxoId,proximo) VALUES 
(16,'Aguardando Assinatura do Secretario no Laudo Final',1,'{"id":16,"proximo":{"10":{"class":"AvaliacaoResultados_Events_Devolver","path":"/modules/avaliacao-resultados/events/Devolver.php"}}}')
;
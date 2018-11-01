INSERT INTO sac.dbo.Estados (descricao,fluxoId,proximo,id) VALUES 
('Aguardando Analise tecnica',1,'{"id":4,"class":"AvaliacaoResultados_Events_Encaminhar","path":"/modules/avaliacao-resultados/events/Encaminhar.php","proximo":{"5":{"class":"AvaliacaoResultados_Events_Encaminhar","path":"/modules/avaliacao-resultados/events/Encaminhar.php"}}}',4)
,('Em Analise Tecnica',1,'{"id":5,"class":"AvaliacaoResultados_Events_FinalizarParecer","path":"/modules/avaliacao-resultados/events/FinalizarParecer.php","proximo":{"5":{"class":"AvaliacaoResultados_Events_Encaminhar","path":"/modules/avaliacao-resultados/events/Encaminhar.php"},"6":{"class":"AvaliacaoResultados_Events_FinalizarParecer","path":"/modules/avaliacao-resultados/events/FinalizarParecer.php"}}}',5)
,('Parecer Finalizado',1,'{"id":6,"class":"AvaliacaoResultados_Events_Encaminhar","path":"/modules/avaliacao-resultados/events/Encaminhar.php","proximo":{"5":{"class":"AvaliacaoResultados_Events_Devolver","path":"/modules/avaliacao-resultados/events/Devolver.php"},"13":{"class":"AvaliacaoResultados_Events_Encaminhar","path":"/modules/avaliacao-resultados/events/Encaminhar.php"}}}',6)
,('Fluxo Finalizado',1,NULL,7)
,('Aguardando Assinatura do Coordenador Geral no Parecer ',1,NULL,15)
,('Aguardando Assinatura do Coordenador no Parecer',1,'{"class":"AvaliacaoResultados_Events_Encaminhar","path":"/modules/avaliacao-resultados/events/AguardandoAssinatura.php","proximo":[]}',9)
,('Analise Laudo Final',1,'{"id":10,"class":"AvaliacaoResultados_Events_FinalizarLaudo","path":"/modules/avaliacao-resultados/events/FinalizarLaudo.php","proximo":{"14":{"class":"AvaliacaoResultados_Events_FinalizarLaudo","path":"/modules/avaliacao-resultados/events/FinalizarLaudo.php"}}}',10)
,('Aguardando Assinatura Laudo',1,'{"id":11,"proximo":{"10":{"class":"AvaliacaoResultados_Events_Devolver","path":"/modules/avaliacao-resultados/events/Devolver.php"}}}',11)
,('Avaliação de Resultados Finalizada',1,NULL,12)
,('Laudo Finalizado',1,NULL,14)
;
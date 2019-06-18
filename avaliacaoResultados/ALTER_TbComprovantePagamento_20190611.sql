
-- Script para execução 
ALTER TABLE BDCorporativo.scSAC.tbComprovantePagamento ALTER COLUMN idArquivo int NULL
ALTER TABLE BDCorporativo.scSAC.tbComprovantePagamento ADD nrCodigoAcesso VARCHAR(200) NULL
ALTER TABLE BDCorporativo.scSAC.tbComprovantePagamento ADD nrProdutoNota VARCHAR(200) NULL  
 
-- Script para defazer a execução
ALTER TABLE BDCorporativo.scSAC.tbComprovantePagamento drop column nrProdutoNota 
ALTER TABLE BDCorporativo.scSAC.tbComprovantePagamento drop column nrCodigoAcesso 
ALTER TABLE BDCorporativo.scSAC.tbComprovantePagamento ALTER COLUMN idArquivo int NOT NULL

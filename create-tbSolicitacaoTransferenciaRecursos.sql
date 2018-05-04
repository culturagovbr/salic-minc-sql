CREATE TABLE tbSolicitacaoTransferenciaRecursos (
       idSolicitacaoTransferenciaRecursos INT PRIMARY KEY NOT NULL IDENTITY,
       idReadequacao INT NOT NULL,
       tpTransferencia TINYINT NOT NULL,
       idPronacRecebedor INT NOT NULL,
       vlRecebido DECIMAL(18,2) NOT NULL,
       siAnaliseTecnica CHAR(1),
       siAnaliseComissao CHAR(1),
       stEstado BIT NOT NULL,
       CONSTRAINT tbSolicitacaoTransferenciaRecursosIdReadequacao_fk FOREIGN KEY (idReadequacao) REFERENCES Readequacao (idReadequacao)
);

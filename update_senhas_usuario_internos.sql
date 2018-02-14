/*
 * Altera todas as senahs dos usuarios internos para 123456
 * Padrão para SQLServer
 * 
 */

-- 1- Essa trigger não permiter atualizar mais de uma senha ao mesmo tempo.
drop TRIGGER [T_Usu_Upd_senha];

-- 2- atualizando a senha de todos os usuario para 123456.
UPDATE  Tabelas.dbo.Usuarios
set usu_senha = '&nH4<!VzM(hP~n`'
where usu_senha is not NULL ;

-- 3- Adiciona a trigger novamente.
CREATE TRIGGER [T_Usu_Upd_senha] ON [dbo].[Usuarios] 
FOR UPDATE
AS IF UPDATE (usu_senha)
    declare @rows       int
    declare @operacao int
    declare @usu_id char(16)
    declare @usu_cod int
    declare @senhaant varchar(15)
    declare @senhanova varchar(15)
    declare @dtvalidant datetime
    declare @dtvalidnova datetime

    select @rows = count(*) from inserted A, deleted B
        where A.usu_codigo = B.usu_codigo and
              (A.usu_senha <> B.usu_senha or
               A.usu_data_validade <> B.usu_data_validade)
    if @rows = 0 begin
        return
    end

    select @rows = count(*) from inserted
    if @rows < 1 begin
        return
    end
    if @rows > 1 begin
        raiserror ('1-%d registros em T_Usu_Upd_senha',
                  16, 1, @rows)
        rollback tran
        return
    end

    select @senhaant = usu_senha, @dtvalidant = usu_data_validade
        from deleted
    if @@error != 0 begin
        raiserror ('2-Erro %d em T_Usu_Upd_senha',
                   16, 1, @@error)
        rollback tran
        return
    end

    select @senhanova = usu_senha, @usu_id = usu_identificacao,
           @usu_cod = usu_codigo, @dtvalidnova = usu_data_validade
        from inserted
    if @@error != 0 begin
        raiserror ('3-Erro %d em T_Usu_Upd_senha',
                   16, 1, @@error)
        rollback tran
        return
    end

    if @senhanova <> 'NEW' and @dtvalidant <> @dtvalidnova begin
        if @senhaant = @senhanova begin
            set @operacao = 1016
        end
        else begin
            set @operacao = 1017
        end
        insert into Tabelas.dbo.Eventos
            (eve_datahora, eve_usuario, eve_operacao, eve_codigo,
             eve_parametros, eve_resultado, eve_texto)
            values (getdate(), @usu_id, @operacao, @usu_cod, @usu_id, 0, '')
    end
    return
    
 

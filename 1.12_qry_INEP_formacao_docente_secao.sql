/* Consulta dos dados de secoes de forma��o docente - INEP */

use dados_gov_br
go

SELECT  [id]
      ,[descricao]
  FROM [dados_gov_br].[dbo].[inep.adequacao_formacao_docente_secao]
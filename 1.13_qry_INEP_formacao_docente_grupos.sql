/* Consulta dos dados de grupos de forma��o docente - INEP */

use dados_gov_br
go

SELECT  [grupo]
      ,[descricao]
  FROM [dados_gov_br].[dbo].[inep.adequacao_formacao_docente_grupos]
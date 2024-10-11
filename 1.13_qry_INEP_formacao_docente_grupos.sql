/* Consulta dos dados de grupos de formação docente - INEP */

use dados_gov_br
go

SELECT  [grupo]
      ,[descricao]
  FROM [dados_gov_br].[dbo].[inep.adequacao_formacao_docente_grupos]
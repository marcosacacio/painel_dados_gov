/* Consulta dos dados de secoes de formação docente - INEP */

use dados_gov_br
go

SELECT  [id]
      ,[descricao]
  FROM [dados_gov_br].[dbo].[inep.adequacao_formacao_docente_secao]
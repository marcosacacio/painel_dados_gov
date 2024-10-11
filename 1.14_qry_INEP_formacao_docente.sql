/* Consulta dos dados de formação docente - INEP */

use dados_gov_br
go

SELECT [ano]
      ,[cod_mun]
      ,[secao]
      ,[subsecao]
      ,[grupo]
      ,[valor]
  FROM [dados_gov_br].[dbo].[inep.adequacao_formacao_docente]

  where localizacao like 'Total'
  and dependencia_adm like 'Municipal'
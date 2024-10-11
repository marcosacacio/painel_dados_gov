/* Consulta dos dados de complexidade da gestão escolar - INEP */

use dados_gov_br
go

SELECT [ano]
      ,[cod_mun]
      ,[nivel]
      ,[valor]
  FROM [dados_gov_br].[dbo].[inep.complexidade_gestao_escola]

  where localizacao like 'Municipal'
  and dependencia_adm like 'Total'
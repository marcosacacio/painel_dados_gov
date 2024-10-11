/* Consulta dos dados de niveis de complexidade da gestão escolar - INEP */

use dados_gov_br
go

SELECT TOP (1000) [nivel]
      ,[descricao]
  FROM [dados_gov_br].[dbo].[inep.complexidade_gestao_escola_nivel]
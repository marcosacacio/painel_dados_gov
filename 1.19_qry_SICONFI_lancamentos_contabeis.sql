/* Consulta dos dados de lançamentos contabeis - SICONFI */

use dados_gov_br
go

SELECT [exercicio]
      ,[cod_tipo]
      ,[cod_mun]
      ,[cod_categoria]
      ,[cod_cta_red]
      ,[valor]
  FROM [dados_gov_br].[dbo].[siconfi_dados]

  where (cod_categoria like '2'
  or cod_categoria like '9')
  and (cod_tipo like '2'
  or cod_tipo like '3')

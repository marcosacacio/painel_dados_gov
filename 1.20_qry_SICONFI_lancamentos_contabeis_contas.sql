/* Consulta dos dados de contas contábeis - SICONFI */

use dados_gov_br
go

SELECT [cod_red]
      ,[desc_conta]
      ,[nivel]
      ,[tipo]
  FROM [dados_gov_br].[dbo].[siconfi_contas]
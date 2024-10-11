/****** Seleção da quantidade de internações por municipio e ano  ******/

use dados_gov_br
go

SELECT [cod_mun]
      ,[ano]
      ,[qtde]
  FROM [dados_gov_br].[dbo].[sus.hosp_internacoes]

  where ano > 2009

go
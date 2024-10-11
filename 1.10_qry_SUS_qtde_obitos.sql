/****** Seleção da quantidade de obitos por municipio e ano  ******/

use dados_gov_br
go

SELECT [cod_mun]
      ,[ano]
      ,[valor]
  FROM [dados_gov_br].[dbo].[sus.hosp_qtde_obitos]

  where ano > 2009
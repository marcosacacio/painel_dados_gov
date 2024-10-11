/****** Seleção do valor de procedimentos hospitalares por municipio e ano  ******/

use dados_gov_br
go

SELECT [cod_mun]
      ,[ano]
      ,[valor]
  FROM [dados_gov_br].[dbo].[sus.hosp_vlr_proced]

  where ano > 2009
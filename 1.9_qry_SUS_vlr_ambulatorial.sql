/****** Seleção do valor de procedimentos ambulatoriais por municipio e ano  ******/

use dados_gov_br
go


SELECT [cod_mun]
      ,[ano]
      ,[valor]
  FROM [dados_gov_br].[dbo].[sus.amb_vlr_producao]

  where ano > 2009
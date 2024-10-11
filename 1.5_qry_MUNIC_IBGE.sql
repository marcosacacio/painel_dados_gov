/* Seleção dos resultados da pesquisa MUNIC feita pelo IBGE*/

use dados_gov_br
go

SELECT [ano]
      ,[codmun]
      ,[tipo_incentivo]
      ,[valor_atributo]
  FROM [dados_gov_br].[dbo].[BR_MUNIC_IBGE]

where ano like '2019'
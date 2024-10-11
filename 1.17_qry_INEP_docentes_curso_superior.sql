/* Consulta dos dados de docentes curso superior - INEP */

use dados_gov_br
go


SELECT [ano]
      ,[cod_mun]
      ,[secao]
      ,[subsecao]
      ,[valor]
  FROM [dados_gov_br].[dbo].[inep.perc_docentes_curso_superior]

  where localizacao like 'Total'
  and dependencia_adm like 'Municipal'
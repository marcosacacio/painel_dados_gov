/* Consulta dos dados de secoes de docentes curso superior - INEP */

use dados_gov_br
go

SELECT [secao]
      ,[descricao]
  FROM [dados_gov_br].[dbo].[inep.perc_docentes_curso_superior_secao]
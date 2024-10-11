/*Consulta de remuneração média dos docentes*/

use dados_gov_br
go

SELECT [ano]
      ,[cod_mun]
      ,[dependencia_adm]
      ,[escolaridade_docente]
      ,[remuneracao_media_40_horas_semanais]
  FROM [dados_gov_br].[dbo].[inep.remuneracao_media_docentes]
/****** 

Script para consolidação de valores do MTE observando os dados históricos.

A totalização é por ano, atividade econômica e mesorregião.

******/


USE dados_gov_br;

SELECT [ano] as 'ano'
      ,sum(cast([empregos] as int)) as 'Empregos'
	  ,ibge.cod_mun
	  

  FROM [dados_gov_br].[dbo].[MTE_RAIS_Vinculos_Ativos] as mte
    INNER JOIN BR_CNAE AS cnae on mte.divisao_cnae = cnae.divisao
  inner join BR_Dados_Geograficos_IBGE AS ibge on mte.codmun = ibge.cod_mun
  INNER JOIN BR_Municipios AS mun on mun.cod_ibge = ibge.cod_mun

	   
where cast(ano as int) >2009

group by ibge.cod_mun, ano
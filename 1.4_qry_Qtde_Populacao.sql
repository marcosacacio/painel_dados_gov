/****** 

Script para realizar a coleta de dados das tabelas de população, mesorregião e ano.

O objetivo desse processo é fornecer elementos que garantam uma consolidação dos dados granulares.

******/

USE dados_gov_br;

SELECT [ano]
      ,([estimativa]) as 'estimativa população'
	  ,ibge.cod_mun

  FROM [dados_gov_br].[dbo].[BR_Estimativa_Populacao_IBGE] as est
  INNER JOIN BR_Dados_Geograficos_IBGE AS ibge on est.codmun = ibge.cod_mun
  INNER JOIN BR_Municipios AS mun on mun.cod_ibge = ibge.cod_mun

 where convert(int,ano) > 2009

  order by ano;

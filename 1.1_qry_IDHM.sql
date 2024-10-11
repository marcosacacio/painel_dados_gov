/****** 

Script para consolidação de valores do IDHM observando os dados históricos.

A totalização é por ano, município e mesorregião.

Na modelagem no PowerBi se tem a estrutura utilizada para consumo dos dados.

******/

USE dados_gov_br;

SELECT [ano]
      ,[codmun]
      ,[idhm]
      ,[idhm_educ]
      ,[idhm_long]
      ,[idhm_rend]
	  ,ibge.mesorregiao
  FROM [dados_gov_br].[dbo].[BR_IDHM] as idhm
  inner join BR_Dados_Geograficos_IBGE AS ibge on idhm.codmun = ibge.cod_mun
  INNER JOIN BR_Municipios AS mun on mun.cod_ibge = ibge.cod_mun
  INNER JOIN BR_Estados as uf on mun.cod_uf = uf.codigo_uf

--  where uf.codigo_uf like '29';


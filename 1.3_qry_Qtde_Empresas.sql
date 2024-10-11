/****** 

Script para consolidar e sumarizar os dados de quantidade de empresas por porte, atividade econômica, situação cadastral e
municipio.

******/

USE dados_gov_br;

SELECT 
       count(est.cnpj_raiz) as 'Qtde'
	   , porte.codigo_porte as 'Codigo Porte'
      ,right(est.data_situacao_cadastral,4) as 'ano'
	  ,mun.cod_ibge

  FROM rfb_empresa AS emp 
  INNER JOIN rfb_estabelecimento as est ON est.cnpj_raiz = emp.cnpj_raiz
  INNER JOIN rfb_estabelecimentos_enderecos as ende on est.cep = ende.cep
  INNER JOIN BR_Dados_Geograficos_SIAFI AS siafi on ende.municipio = siafi.cod_siafi
  INNER JOIN BR_Dados_Geograficos_IBGE AS ibge on siafi.cod_ibge = ibge.cod_mun
  INNER JOIN BR_Municipios AS mun on mun.cod_ibge = ibge.cod_mun
  INNER JOIN BR_Estados as uf on mun.cod_uf = uf.codigo_uf
  INNER JOIN BR_CNAE AS cnae on est.cnae_principal = cnae.subclasse
  INNER JOIN rfb_situacao_cadastral AS sit ON est.situacao_cadastral = sit.codigo
  INNER JOIN rfb_porte as porte ON emp.porte = porte.codigo_porte

 where sit.codigo like '02'
 and (right(est.data_situacao_cadastral,4) like '2010' or right(est.data_situacao_cadastral,4) like '2011' or
 right(est.data_situacao_cadastral,4) like '2012' or right(est.data_situacao_cadastral,4) like '2013'
 or right(est.data_situacao_cadastral,4) like '2014' or right(est.data_situacao_cadastral,4) like '2015'
 or right(est.data_situacao_cadastral,4) like '2016' or right(est.data_situacao_cadastral,4) like '2017'
 or right(est.data_situacao_cadastral,4) like '2018' or right(est.data_situacao_cadastral,4) like '2019'
 or right(est.data_situacao_cadastral,4) like '2020' or right(est.data_situacao_cadastral,4) like '2021'
 or right(est.data_situacao_cadastral,4) like '2022')

 group by mun.cod_ibge, right(est.data_situacao_cadastral,4), porte.codigo_porte


UNION

SELECT 
       count(est.cnpj_raiz) as 'Qtde'
	   , porte.codigo_porte as 'Codigo Porte'
      ,left(est.data_situacao_cadastral,4) as 'ano'
	  ,mun.cod_ibge

  FROM rfb_empresa AS emp 
  INNER JOIN rfb_estabelecimento as est ON est.cnpj_raiz = emp.cnpj_raiz
  INNER JOIN rfb_estabelecimentos_enderecos as ende on est.cep = ende.cep
  INNER JOIN BR_Dados_Geograficos_SIAFI AS siafi on ende.municipio = siafi.cod_siafi
  INNER JOIN BR_Dados_Geograficos_IBGE AS ibge on siafi.cod_ibge = ibge.cod_mun
  INNER JOIN BR_Municipios AS mun on mun.cod_ibge = ibge.cod_mun
  INNER JOIN BR_Estados as uf on mun.cod_uf = uf.codigo_uf
  INNER JOIN BR_CNAE AS cnae on est.cnae_principal = cnae.subclasse
  INNER JOIN rfb_situacao_cadastral AS sit ON est.situacao_cadastral = sit.codigo
  INNER JOIN rfb_porte as porte ON emp.porte = porte.codigo_porte

 where sit.codigo like '02'
 and (left(est.data_situacao_cadastral,4) like '2010' or left(est.data_situacao_cadastral,4) like '2011' or
 left(est.data_situacao_cadastral,4) like '2012' or left(est.data_situacao_cadastral,4) like '2013'
 or left(est.data_situacao_cadastral,4) like '2014' or left(est.data_situacao_cadastral,4) like '2015'
 or left(est.data_situacao_cadastral,4) like '2016' or left(est.data_situacao_cadastral,4) like '2017'
 or left(est.data_situacao_cadastral,4) like '2018' or left(est.data_situacao_cadastral,4) like '2019'
 or left(est.data_situacao_cadastral,4) like '2020' or left(est.data_situacao_cadastral,4) like '2021'
 or left(est.data_situacao_cadastral,4) like '2022')

 group by mun.cod_ibge, left(est.data_situacao_cadastral,4), porte.codigo_porte

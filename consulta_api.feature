Feature: Consulta API

Scenario: Verificar se o JSON retornado possui a chave "typeOfEstablishment"
  Given que eu faço uma requisição para o endpoint de consulta
  Then o JSON retornado deve conter a chave "typeOfEstablishment"
  And printo aleatoriamente um tipo de estabelecimento
require 'httparty'

Given("que eu faço uma requisição para o endpoint de consulta") do
    @response = HTTParty.get("https://portal.vr.com.br/api-web/comum/enumerations/VRPAT")
  end
  
  Then("o JSON retornado deve conter a chave {string}") do |chave|
    json_response = JSON.parse(@response.body)
    expect(json_response).to have_key(chave)
  end
  
  
  Then("printo aleatoriamente um tipo de estabelecimento") do
    tipos_estabelecimento = @response["typeOfEstablishment"]
    tipo_aleatorio = tipos_estabelecimento.sample
    puts "Tipo de estabelecimento aleatório: #{tipo_aleatorio}"
  end
  
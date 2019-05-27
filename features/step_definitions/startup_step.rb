# frozen_string_literal: true

Dado('o endereço da API para manter o cadastro de Startup') do
  #$uri_base = 'http://5b49f9b0ff11b100149bf42b.mockapi.io/cm/startup'
  #já instanciado pela classe Startup  
end

Quando('realizar uma requisição para cadastar uma startup') do
  #$response = HTTParty.post($uri_base, body: { "nome": @nome, "cidade": @cidade })
  # "nome": 'Maris', "cidade": 'Cambuquira' })
  $response = @startup.postStartup
  puts("O nome é: " + @nome)
  puts("A cidade é: " + @cidade)

end

Então('a API irá retornar os dados do cadastro da Startup respondendo o código {int}') do |_int|
  puts "response body :#{$response.body}"
  puts "response code :#{$response.code}"
end

Quando('realizar uma requisição para consultar uma startup') do
  $response = HTTParty.get('http://5b49f9b0ff11b100149bf42b.mockapi.io/cm/startup')
end

Então('a API irá retornar os dados de consulta da Startup respondendo o código {int}') do |_int|
  puts "response code :#{$response.code}"
  puts "response message :#{$response.message}"
  puts "response headers :#{$response.headers}"
  puts "response body :#{$response.body}"
end

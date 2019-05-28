# frozen_string_literal: true

Dado('o endereço da API para manter o cadastro de Startup') do
  # $uri_base = 'http://5b49f9b0ff11b100149bf42b.mockapi.io/cm/startup'
  # já instanciado pela classe Startup
end

Quando('realizar uma requisição para cadastar uma startup') do
  # $response = HTTParty.post($uri_base, body: { "nome": @nome, "cidade": @cidade })
  # "nome": 'Maris', "cidade": 'Cambuquira' })
  $response = @startup.postStartup
  puts('O nome é: ' + @nome)
  puts('A cidade é: ' + @cidade)
end

Então('a API irá retornar os dados do cadastro da Startup respondendo o código {int}') do |_int|
  # puts "response code :#{$response.code}"
  # puts "response body :#{$response.body}"
  expect($response.code).to eq(201)
  # expect($response.code).to eq(400)
  puts "response code :#{$response.code}"
  expect($response.message).to eq('Created')
  # expect($response.message).to eq('Bad Request')
  puts "response message :#{$response.message}"

  # imprime os atributos da requisição
  puts "ID    : #{$response['id']}"
  puts "Data  : #{$response['data']}"
  puts "Nome  : #{$response['nome']}"
  puts "Conta : #{$response['conta']}"
  puts "Cidade: #{$response['cidade']}"
end

Quando('realizar uma requisição para consultar uma startup') do
  $response = HTTParty.get('http://5b49f9b0ff11b100149bf42b.mockapi.io/cm/startup')
end

Então('a API irá retornar os dados de consulta da Startup respondendo o código {int}') do |_int|
  expect($response.code).to eq(200)
  puts "response code :#{$response.code}"
  expect($response.message).to eq('OK')
  puts "response message :#{$response.message}"

  # imprime os atributos da requisição
  #  puts "ID    : #{$response[140]['id']}"
  #  puts "Data  : #{$response[140]['data']}"
  #  puts "Nome  : #{$response[140]['nome']}"
  #  puts "Conta : #{$response[140]['conta']}"
  #  puts "Cidade: #{$response[140]['cidade']}"

  puts "response headers :#{$response.headers}"
  puts "response body :#{$response.body}"
end

Quando('realizar uma requisição passando o ID da Startup') do
  $response = @startup.getStartup(140)
end

Então('a API irá retornar os dados da Startup correspondente respondendo o código {int}') do |_int|
  expect($response.code).to eq(200)
  puts "response code :#{$response.code}"
  expect($response.message).to eq('OK')
  puts "response message :#{$response.message}"

  puts "ID    : #{$response['id']}"
  puts "Data  : #{$response['data']}"
  puts "Nome  : #{$response['nome']}"
  puts "Conta : #{$response['conta']}"
  puts "Cidade: #{$response['cidade']}"
end

Quando('realizar uma requisição para alterar uma Startup') do
  $response = @startup.putStartup(140)
end

Então('a API irá retornar os dados da Startup alterados respondendo o código {int}') do |_int|
  expect($response.code).to eq(200)
  puts "response code :#{$response.code}"
  expect($response.message).to eq('OK')
  puts "response message :#{$response.message}"

  puts "ID    : #{$response['id']}"
  puts "Data  : #{$response['data']}"
  puts "Nome  : #{$response['nome']}"
  puts "Conta : #{$response['conta']}"
  puts "Cidade: #{$response['cidade']}"
end

Quando('realizar uma requisição para excluir uma Startup') do
  $response = @startup.deleteStartup(140)
end

Então('a API deverá retornar os dados da exclusão respondendo o código {int}') do |_int|
  expect($response.code).to eq(200)
  puts "response code :#{$response.code}"
  expect($response.message).to eq('OK')
  puts "response message :#{$response.message}"

  puts "ID    : #{$response['id']}"
  puts "Data  : #{$response['data']}"
  puts "Nome  : #{$response['nome']}"
  puts "Conta : #{$response['conta']}"
  puts "Cidade: #{$response['cidade']}"
end

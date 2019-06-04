  Dado("o endereço da API para manter o cadastro de CEP") do
    #pending # Write code here that turns the phrase above into concrete actions
  end
  

  Quando("realizar uma requisição para consultar o CEP {string}") do |cep|
    $response = @cep.getCep(cep)
    #puts cep
  end
    
  Então("a API irá retornar os dados de consulta dos CEPS respondendo o código {int}") do |int|
    #puts "response headers :#{$response.headers}"
    #puts "response body :#{$response.body}"
    puts "\n"
    puts "Bairro: #{$response['bairro']}\n"
    puts "Cidade: #{$response['cidade']}\n"
    #puts "Cidade info: #{$response['cidade_info']}\n"
    puts "Logradouro: #{$response['logradouro']}\n"
    puts "Cep :#{$response['cep']}\n"
    puts "Estado: #{$response['estado']}\n"
    #puts "Estado info: #{$response['estado_info']}\n"
    expect($response.code).to eq(200)
    puts "\n"
    puts "Response code :#{$response.code}"
  end


  
  Então("com o endereço {string}") do |rua|
    #pending # Write code here that turns the phrase above into concrete actions
    expect($response['logradouro']).to eq(rua)
  end
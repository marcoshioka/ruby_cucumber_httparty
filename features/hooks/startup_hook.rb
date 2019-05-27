# frozen_string_literal: true

Faker::Config.locale = :'pt-BR'

Before '@startup' do
  @nome = Faker::Company.name
  @cidade = Faker::Address.city

  @body = {
    "nome": @nome,
    "cidade": @cidade
  }

  @startup = Startup.new(@body)
end

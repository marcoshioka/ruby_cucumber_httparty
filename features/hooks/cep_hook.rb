# frozen_string_literal: true

Faker::Config.locale = :'pt-BR'

Before '@cep' do
  #@nome = Faker::Company.name
  #@cidade = Faker::Address.city

  # @body = {"bairro": "", 
  #           "cidade": "", 
  #           "logradouro": "",  
  #           "estado_info": {"area_km2": "248.221,996", "codigo_ibge": "35", "nome": "S\u00e3o Paulo"}, 
  #           "cep": "", 
  #           "cidade_info": {"area_km2": "1521,11", "codigo_ibge": "3550308"}, 
  #           "estado": ""
  #        }

  @cep = Cep.new(@body)
end

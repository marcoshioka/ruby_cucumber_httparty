# frozen_string_literal: true

class Cep
  include HTTParty
  require_relative '../hooks/cep_hook'
  base_uri 'https://api.postmon.com.br/v1'

  def initialize(body)
    @options = { body: body }
    @options2 = {}
  end

  def getCep(cep)
    self.class.get('/cep/' + cep, @options2)
  end
  end

# frozen_string_literal: true

class Startup
  include HTTParty
  require_relative '../hooks/startup_hook'
  base_uri 'http://5b49f9b0ff11b100149bf42b.mockapi.io/cm'

  def initialize(body)
    @options = { body: body }
  end

  def postStartup
    self.class.post('/startup', @options)
  end
end

require 'tableau_trusted_auth'
require 'httparty'

module TableauTrustedAuth 
  class View
    include HTTParty

    def initialize(server_address, params = {})
      self.class.base_uri server_address
      @server_address = server_address
      @params = params
    end

    def get_ticket
      resp = self.class.post '/trusted', { query: @params }
      @unique_id = resp
    end

    def url(url)
      get_ticket
      "#{self.class.base_uri}/trusted/#{@unique_id}/#{url}"
    end
  end
end
require 'tableau_trusted_auth'
require 'httparty'

module TableauTrustedAuth 
  class View
    include HTTParty

    def initialize(server_address, username)
      self.class.base_uri server_address
      @server_address = server_address
      @username = username
    end

    def get_ticket
      resp = self.class.post '/trusted', { query: { username: @username } }
      @unique_id = resp
    end

    def url(url)
      get_ticket
      "#{self.class.base_uri}/trusted/#{@unique_id}/views/#{url}"
    end
  end
end
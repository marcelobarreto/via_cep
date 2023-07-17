# frozen_string_literal: true

module ViaCep
  module HTTP
    #
    # Main HTTP module using Net::HTTP
    #
    # return [Net::HTTPOK] | [Net::HTTPBadRequest]
    #
    def self.get(path:, query: {})
      Net::HTTP.get_response(ViaCep::HTTP.uri(path: path, query: query))
    end

    def self.was_successful?(request)
      request.code.eql?('200')
    end

    def self.uri(path:, query: {})
      base_uri = URI(BASE_URL)
      base_uri.path = "/ws/#{URI::Parser.new.escape(path)}/json"
      base_uri.query = URI.encode_www_form(query)
      base_uri
    end
  end
end

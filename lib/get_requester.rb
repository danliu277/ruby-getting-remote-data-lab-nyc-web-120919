# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(@url)
        @data = Net::HTTP.get_response(uri).body
    end

    def parse_json
        JSON.parse(self.get_response_body)
    end
end
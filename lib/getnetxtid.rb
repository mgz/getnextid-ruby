require "getnetxtid/version"
require 'net/http'

module Getnetxtid
    class Error < StandardError;end
    
    def self.get(counter_name, password)
        response = Net::HTTP.get(URI.parse("https://getnextid.com/counter/#{counter_name}?auth=#{password}"), nil)
        return response.to_i
    end

    def self.increment_and_get(counter_name, password)
        response = Net::HTTP.post(URI.parse("https://getnextid.com/counter/#{counter_name}?auth=#{password}"), nil)
        return response.body.to_i
    end
    
end

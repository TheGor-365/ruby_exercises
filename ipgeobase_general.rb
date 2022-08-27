require_relative "ipgeobase_general_happymapper"
require "addressable/template"
require "net/http"

# Service to get location info by ip
module Ipgeobase
  class << self
    API_URL = "http://ip-api.com"

    def lookup(ip)
      uri = Addressable::Template.new("#{API_URL}{/segments*}{?fields}").expand({
        "segments" => ["xml", ip.to_s],
        "fields"   => "country,countryCode,city,lat,lon"
      })
      xml = Net::HTTP.get uri
      Address.parse xml
    end
  end
end

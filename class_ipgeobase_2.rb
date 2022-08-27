require "addressable/template"
require 'happymapper'
require 'net/http'


module Ipgeobase
  class << self
    def lookup(ip)
      lookup_query = "fields=country,countryCode,city,lat,lon"
      @lookup = URI.parse "http://ip-api.com/xml/#{@ip}?#{lookup_query}"
      HappyMapper.parse(Net::HTTP.get @lookup)
    end
  end
end

pp ip_meta = Ipgeobase.lookup('83.169.216.199')
puts
puts
puts ip_meta.country
puts
puts ip_meta.country_code
puts
puts ip_meta.city
puts
ip_meta.lat
puts
ip_meta.lon

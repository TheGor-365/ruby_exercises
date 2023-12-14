require 'addressable/template'
require 'happymapper'
require 'net/http'

module Ipgeobase
  class << self
    def lookup(ip)
      lookup_query = 'fields=country,countryCode,city,lat,lon'
      @lookup = URI.parse "http://ip-api.com/xml/#{@ip}?#{lookup_query}"
      HappyMapper.parse(Net::HTTP.get @lookup)
    end
  end
end


pp ip_meta = Ipgeobase.lookup('83.169.216.199'); puts

pp ip_meta.country
pp ip_meta.country_code
pp ip_meta.city; puts


ip_meta.lat
ip_meta.lon

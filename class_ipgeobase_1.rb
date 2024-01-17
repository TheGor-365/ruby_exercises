require 'addressable/template'
require 'happymapper'
require 'net/http'


class Ipgeobase
  def self.lookup(ip)
    query  = 'fields=country,countryCode,city,lat,lon'
    lookup = URI.parse "http://ip-api.com/xml/#{ip}?#{query}"
    HappyMapper.parse Net::HTTP.get lookup
  end
end


pp ip_meta = Ipgeobase.lookup('83.169.216.199'); puts

pp ip_meta.country
pp ip_meta.country_code
pp ip_meta.city
pp ip_meta.lat
pp ip_meta.lon

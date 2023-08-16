require "addressable/template"
require 'happymapper'
require 'net/http'


class Ipgeobase
  def self.lookup(ip)
    query = "fields=country,countryCode,city,lat,lon"
    lookup = URI.parse "http://ip-api.com/xml/#{ip}?#{query}"
    HappyMapper.parse Net::HTTP.get lookup
  end
end


pp ip_meta = Ipgeobase.lookup('83.169.216.199')

puts

p ip_meta.country
p ip_meta.country_code
p ip_meta.city
p ip_meta.lat
p ip_meta.lon

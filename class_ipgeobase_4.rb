require "addressable/template"
require 'happymapper'
require 'net/http'


class << self
  def lookup(ip)
    lookup_query = "fields=country,countryCode,city,lat,lon"
    @lookup = URI.parse "http://ip-api.com/xml/#{@ip}?#{lookup_query}"
    HappyMapper.parse(Net::HTTP.get @lookup)
  end
end


ip_meta = lookup '83.169.216.199'

puts

pp ip_meta

puts
puts

ip_meta.country
puts
puts ip_meta.country_code
puts
puts ip_meta.city
puts
puts ip_meta.lat
puts
puts ip_meta.lon

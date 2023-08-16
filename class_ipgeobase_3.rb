require "addressable/template"
require 'happymapper'
require 'net/http'


module Ipgeobase
  def self.lookup(ip)
    lookup_query = 'fields=country,countryCode,city,lat,lon'
    @lookup      = URI.parse "http://ip-api.com/xml/#{@ip}?#{lookup_query}"

    pp Net::HTTP.get @lookup
  end

  def self.country
    country_query = 'fields=country'
    @country      = URI.parse "http://ip-api.com/xml/#{@ip}?#{country_query}"

    Net::HTTP.get @country_code
  end

  def self.country_code
    country_code_query = 'fields=countryCode'
    @country_code      = URI.parse "http://ip-api.com/xml/#{@ip}?#{country_code_query}"

    Net::HTTP.get @country_code
  end

  def self.city
    city_query = 'fields=city'
    @city      = URI.parse "http://ip-api.com/xml/#{@ip}?#{city_query}"

    Net::HTTP.get @city
  end

  def self.lat
    lat_query = 'fields=lat'
    @lat      = URI.parse "http://ip-api.com/xml/#{@ip}?#{lat_query}"

    Net::HTTP.get @lat
  end

  def self.lon
    lon_query = 'fields=lon'
    @lon      = URI.parse "http://ip-api.com/xml/#{@ip}?#{lon_query}"

    Net::HTTP.get @lon
  end
end


ip_meta = Ipgeobase.lookup('83.169.216.199')

puts

pp ip_meta.country
pp ip_meta.country_code
pp ip_meta.city
pp ip_meta.lat
pp ip_meta.lon

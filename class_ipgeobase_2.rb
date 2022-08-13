require "addressable/template"
require 'happymapper'
require 'net/http'


module Ipgeobase
  class Error < StandardError; end

  class << self
    def lookup(ip)
      lookup_query = "fields=country,countryCode,city,lat,lon"
      @lookup = URI.parse "http://ip-api.com/xml/#{@ip}?#{lookup_query}"
      HappyMapper.parse(Net::HTTP.get @lookup)
    end

    # def country
    #   country_query = "fields=country"
    #   @country = URI.parse "http://ip-api.com/xml/#{@ip}?#{country_query}"
    #   HappyMapper.parse(Net::HTTP.get @country)
    # end
    #
    # def country_code
    #   country_code_query = "fields=countryCode"
    #   @country_code = URI.parse "http://ip-api.com/xml/#{@ip}?#{country_code_query}"
    #   HappyMapper.parse(Net::HTTP.get @country_code)
    # end
    #
    # def city
    #   city_query = "fields=city"
    #   @city = URI.parse "http://ip-api.com/xml/#{@ip}?#{city_query}"
    #   HappyMapper.parse(Net::HTTP.get @city)
    #
    # end
    #
    # def lat
    #   lat_query = "fields=lat"
    #   @lat = URI.parse "http://ip-api.com/xml/#{@ip}?#{lat_query}"
    #   puts HappyMapper.parse(Net::HTTP.get @lat)
    # end
    #
    # def lon
    #   lon_query = "fields=lon"
    #   @lon = URI.parse "http://ip-api.com/xml/#{@ip}?#{lon_query}"
    #   puts HappyMapper.parse(Net::HTTP.get @lon)
    # end
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

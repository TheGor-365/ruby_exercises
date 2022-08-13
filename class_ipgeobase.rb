require "addressable/template"
require 'happymapper'
require 'net/http'


class Ipgeobase
  # attr_reader :country, :city, :country_code, :lat, :lon
  #
  # def initialize
  #   @country, @city, @country_code, @lat, @lon = country, city, country_code, lat, lon
  # end

  def self.lookup(ip)
    lookup_query = "fields=country,countryCode,city,lat,lon"
    @lookup = URI.parse "http://ip-api.com/xml/#{@ip}?#{lookup_query}"
    pp HappyMapper.parse(Net::HTTP.get @lookup)
  end

  # def country
  #   country_query = "fields=country"
  #   @country = URI.parse "http://ip-api.com/xml/#{@ip}?#{country_query}"
  #   pp HappyMapper.parse(Net::HTTP.get @country)
  # end
  #
  # def country_code
  #   country_code_query = "fields=countryCode"
  #   @country_code = URI.parse "http://ip-api.com/xml/#{@ip}?#{country_code_query}"
  #   pp HappyMapper.parse(Net::HTTP.get @country_code)
  # end
  #
  # def city
  #   city_query = "fields=city"
  #   @city = URI.parse "http://ip-api.com/xml/#{@ip}?#{city_query}"
  #   pp HappyMapper.parse(Net::HTTP.get @city)
  # end
  #
  # def lat
  #   lat_query = "fields=lat"
  #   @lat = URI.parse "http://ip-api.com/xml/#{@ip}?#{lat_query}"
  #   pp HappyMapper.parse(Net::HTTP.get @lat)
  # end
  #
  # def lon
  #   lon_query = "fields=lon"
  #   @lon = URI.parse "http://ip-api.com/xml/#{@ip}?#{lon_query}"
  #   pp HappyMapper.parse(Net::HTTP.get @lon)
  # end
end


ip_meta = Ipgeobase.lookup('83.169.216.199')

# ip_meta.lookup('83.169.216.199')
puts
puts
p ip_meta.country
puts
ip_meta.country_code
puts
ip_meta.city
puts
ip_meta.lat
puts
ip_meta.lon

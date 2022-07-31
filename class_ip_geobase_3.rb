require 'net/http'
require "uri"


module Ipgeobase
  class Error < StandardError; end

  attr_reader :country, :countryCode, :city, :lat, :lon

  def initialize
    @country = country
    @countryCode = countryCode
    @city = city
    @lat = lat
    @lon = lon
  end

  def self.lookup(ip)
    lookup_query = "fields=country,countryCode,city,lat,lon"
    @lookup = URI.parse "http://ip-api.com/xml/#{@ip}?#{lookup_query}"
    puts Net::HTTP.get @lookup
  end

  def country
    @ip_meta.Ipgeobase.lookup(ip).country
  end

  def self.countryCode
    countryCode_query = "fields=countryCode"
    @countryCode = URI.parse "http://ip-api.com/xml/#{@ip}?#{countryCode_query}"
    Net::HTTP.get @countryCode
  end

  def self.city
    city_query = "fields=city"
    @city = URI.parse "http://ip-api.com/xml/#{@ip}?#{city_query}"
    Net::HTTP.get @city
  end

  def self.lat
    lat_query = "fields=lat"
    @lat = URI.parse "http://ip-api.com/xml/#{@ip}?#{lat_query}"
    Net::HTTP.get @lat
  end

  def self.lon
    lon_query = "fields=lon"
    @lon = URI.parse "http://ip-api.com/xml/#{@ip}?#{lon_query}"
    Net::HTTP.get @lon
  end
end

ip_meta = Ipgeobase.lookup('83.169.216.199')
puts
puts ip_meta.country
puts
# puts ip_meta.countryCode
# puts
# puts ip_meta.city
# puts
# puts ip_meta.lat
# puts
# puts ip_meta.lon

# require 'net/http'
require "addressable/template"
require "addressable/uri"
require 'happymapper'


module Ipgeobase
  class Error < StandardError; end

  def self.lookup(ip)
    # uri = URI.parse "http://ip-api.com/xml/#{ip}?fields=country,countryCode,city,lat,lon"
    # response = Net::HTTP.get uri
    address = HappyMapper.parse("http://ip-api.com/xml/#{ip}?fields=country,countryCode,city,lat,lon")
    address.city
  end

  # def self.country(ip)
  #   template = Addressable::Template.new("http://ip-api.com/xml/#{ip}?fields=country")
  #
  #   template.expand({
  #     "query" => {
  #       'fields' => 'country',
  #     }
  #   })
  # end

  def self.country(ip)
    template = Addressable::Template.new("http://ip-api.com/xml/#{ip}{?query*}")

    template.expand({
      "query" => {
        'fields' => 'country'
      }
    })
  end
end

ip_meta = Ipgeobase.lookup('83.169.216.199')

puts ip_meta
# puts ip_meta.country

require "addressable/template"
require "addressable/uri"
require 'happymapper'
require 'net/http'

module Ipgeobase
  class Error < StandardError; end

  def self.lookup(ip)
    lookup_uri = Addressable::Template.new("http://{host}{/segments*}{?fields}").expand({
      'host'     => 'ip-api.com',
      'segments' => ['xml', "#{@ip}"],
      'fields'   => 'country,countryCode,city,lat,lon'
    })

    HappyMapper.parse(Net::HTTP.get lookup_uri)
  end
end

pp ip_meta = Ipgeobase.lookup('83.169.216.199')
puts
ip_meta
# p ip_meta.country_code

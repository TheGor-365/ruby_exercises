require "addressable/template"
require 'happymapper'
require 'net/http'

module Ipgeobase
  class << self
    def lookup(ip)
      lookup_uri = Addressable::Template.new("http://{host}{/segments*}{?fields}").expand({
        'host'     => 'ip-api.com',
        'segments' => ['xml', "#{ip}"],
        'fields'   => 'country,countryCode,city,lat,lon'
      })

      lookup_xml = Net::HTTP.get lookup_uri
      HappyMapper.parse lookup_xml
    end
  end
end


# ip_meta = Ipgeobase.lookup('83.169.216.199')
ip_meta = Ipgeobase.lookup('81.200.23.8')

pp ip_meta; puts

pp ip_meta.country
pp ip_meta.city
pp ip_meta.country_code
pp ip_meta.lat
pp ip_meta.lon


puts


pp ip_meta.instance_variable_get '@country'
puts '-' * 90
puts 'ip_meta.class.ancestors'
pp ip_meta.class.ancestors
puts '-' * 90
puts 'ip_meta.class.instance_variables'
pp ip_meta.class.instance_variables
puts '-' * 90
puts 'ip_meta.class.class_variables'
pp ip_meta.class.class_variables
puts '-' * 90
puts 'ip_meta.class.instance_methods'
pp ip_meta.class.instance_methods
puts '-' * 90
puts 'ip_meta.class.elements'
pp ip_meta.class.elements
puts '-' * 90
puts 'ip_meta.instance_variables'
pp ip_meta.instance_variables.join(' ').split(' ')
puts '-' * 90

pp ip_meta.send :city
puts '-' * 90
pp ip_meta.instance_eval 'lat'
puts '-' * 90

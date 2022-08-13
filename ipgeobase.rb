require "addressable/template"
require 'happymapper'
require 'net/http'

module Ipgeobase
  # class Error < StandardError; end

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
puts
puts ip_meta
puts
puts ip_meta.country
puts ip_meta.city
puts ip_meta.country_code
puts ip_meta.lat
p ip_meta.lon
puts

# p ip_meta.instance_variable_get '@country'
# puts '-' * 90
# puts 'ip_meta.class.ancestors'
# pp ip_meta.class.ancestors
# puts '-' * 90
# puts 'ip_meta.class.instance_variables'
# pp ip_meta.class.instance_variables
# puts '-' * 90
# puts 'ip_meta.class.class_variables'
# pp ip_meta.class.class_variables
# puts '-' * 90
# puts 'ip_meta.class.instance_methods'
# pp ip_meta.class.instance_methods
# puts '-' * 90
# puts 'ip_meta.class.elements'
# pp ip_meta.class.elements
# puts '-' * 90
# puts 'ip_meta.instance_variables'
# pp ip_meta.instance_variables.join(' ').split(' ')
# puts '-' * 90

# pp ip_meta.send :city
# puts '-' * 90
# pp ip_meta.instance_eval 'lat'
# puts '-' * 90

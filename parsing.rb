require 'net/http'
require 'uri'

uri = URI.parse 'https://www.avito.ru/moskva'
response = Net::HTTP.get uri
puts response

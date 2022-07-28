require 'net/http'
require 'uri'

uri = URI.parse 'https://www.avito.ru/moskva'
response = Net::HTTP.post_form uri, login: 'aaa', password: 'bbb'
puts response.inspect

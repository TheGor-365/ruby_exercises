require 'net/http'
require 'uri'

def is_wrong_password? password
  uri = URI.parse 'https://www.avito.ru/moskva'
  response = Net::HTTP.post_form(uri, login: 'admin', password: password).body
  response.include? 'config'
end

puts is_wrong_password? 'gor'

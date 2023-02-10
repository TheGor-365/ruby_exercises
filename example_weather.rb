require 'net/http'
require 'uri'
require 'rexml/document'

CLOUDINESS = { 0 => 'clear', 1 => 'cloudy', 2 => 'overcast', 3 => 'murky' }

uri = URI.parse 'https://xml.meteoservice.ru/export/gismeteo/point/34331.xml'
response = Net::HTTP.get_response(uri)
doc = REXML::Document.new(response.body)

city_name = URI.decode_www_form(doc.root.elements['REPORT/TOWN'].attributes['sname'])
current_forecast = doc.root.elements['REPORT/TOWN'].elements.to_a[0]

min_temp = current_forecast.elements['TEMPERATURE'].attributes['min']
max_temp = current_forecast.elements['TEMPERATURE'].attributes['max']
max_wind = current_forecast.elements['WIND'].attributes['max']
cloud_index = current_forecast.elements['PHENOMENA'].attributes['cloudiness'].to_i

clouds = CLOUDINESS[cloud_index]

puts city_name
puts "Temperature: #{min_temp} / #{max_temp}"
puts "Wind: #{max_wind} m/s"
puts clouds

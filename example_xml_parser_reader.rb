require 'rexml/document'
require 'date'

data_path = 'xml_files/expenses.xml'
abort 'File not found' unless File.exists?(data_path)

data_file     = File.new(data_path)
doc           = REXML::Document.new(data_file)
amount_by_day = Hash.new

doc.elements.each('expenses/expense') do |item|
  lose_sum = item.attributes['amount'].to_i
  lose_day = Date.parse(item.attributes['date'])

  amount_by_day[lose_day] ||= 0
  amount_by_day[lose_day] += lose_sum
end

data_file.close

sum_by_month  = Hash.new
current_month = amount_by_day.keys.sort[0].strftime('%B %Y')

amount_by_day.keys.sort.each do |key|
  sum_by_month[key.strftime('%B %Y')] ||= 0
  sum_by_month[key.strftime('%B %Y')] += amount_by_day[key]
end

puts "#{current_month} lose amount: #{sum_by_month[current_month]}"

amount_by_day.keys.sort.each do |key|
  if key.strftime('%B %Y') != current_month
    current_month = key.strftime('%B %Y')
    puts "#{current_month} lose amount: #{sum_by_month[current_month]}"
  end
  puts "\t#{key.day}: #{amount_by_day[key]}$"
end

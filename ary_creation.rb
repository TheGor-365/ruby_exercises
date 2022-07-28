def valid_date?(date)
  day, month = date.split('-').map(&:to_i)
  day.between?(1, 31) && month.between?(1, 12)
end

puts valid_date?('11-11-2011')
puts valid_date?('13-11-2011')
puts valid_date?('11-13-2011')
puts valid_date?('55-11-2011')

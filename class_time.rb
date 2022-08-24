require 'time'

def next_day
  today = Date.today
  tomorrow = today.next
  Time.new tomorrow.year, tomorrow.month, tomorrow.day
end

puts next_day

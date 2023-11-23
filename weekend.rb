time     = Time.new
week_day = time.wday

if time.wday == 6
  week_day = 'It is Saturday'
elsif time.wday == 0
  week_day = 'It is Sunday'
else
  week_day = 'It is not a weekend'
end

print 'What is the day today? (Press enter): '
press = gets.strip


pp week_day if press == ''

time = Time.new
week_day = time.wday

if time.wday == 6
   week_day = "It's Saturday!"
elsif time.wday == 0
  week_day = "It's Sunday!"
else
  week_day = "It's not a weekend!"
end

print "What is the day today? (Press enter): "
press = gets.strip

puts week_day if press == ""

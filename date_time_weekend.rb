time = Time.now
week_day = time.wday

case week_day
when 0
  week_day = 'monday'
when 1
  week_day = 'tuesday'
when 2
  week_day = 'wetnesday'
when 3
  week_day = 'thursday'
when 4
  week_day = 'friday'
when 5
  week_day = 'saturday'
when 6
  week_day = 'sunday'
end


if week_day == 0 || week_day == 1
  puts "#{time.strtime("%H:%M")} #{week_day}: it's weekend!"
else
  puts "Moscow #{time.strftime("%H:%M")}, #{week_day}: work, work, work!!!"
end

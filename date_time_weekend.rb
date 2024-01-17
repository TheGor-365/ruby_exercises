time     = Time.now
week_day = time.wday

case week_day
when 0 then week_day = 'monday'
when 1 then week_day = 'tuesday'
when 2 then week_day = 'wetnesday'
when 3 then week_day = 'thursday'
when 4 then week_day = 'friday'
when 5 then week_day = 'saturday'
when 6 then week_day = 'sunday'
end


if week_day == 0 || week_day == 1
  pp "#{time.strtime('%H:%M')} #{week_day}: it's weekend"
else
  pp "Moscow #{time.strftime('%H:%M')}, #{week_day}: work, work, work"
end

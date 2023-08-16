say_hi = lambda { pp 'Hi' }
say_by = lambda { pp 'Bye' }

week = %w[ say_hi say_hi say_hi say_hi say_hi say_hi say_by say_by ]

week.each do |f|
  pp f
end

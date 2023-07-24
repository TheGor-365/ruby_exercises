say_hi = lambda { puts 'Hi' }
say_by = lambda { puts 'Bye' }

week = %w[ say_hi say_hi say_hi say_hi say_hi say_hi say_by say_by ]

week.each do |f|
  pp f
end

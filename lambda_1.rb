say_hi = lambda { puts 'Hi' }
say_by = lambda { puts 'Bye' }

week =  [say_hi, say_hi, say_hi, say_hi, say_hi, say_hi, say_by, say_by]

week.each do |f|
  f.call
end

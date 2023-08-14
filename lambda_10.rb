say_hi =  lambda { puts "Hi" }
say_bye = lambda { puts "Bye" }

say_hi.call
say_bye.call

puts


week = %w[ say_hi say_hi say_hi say_hi say_hi say_bye say_bye ]

sub_10 = lambda do |number|
  number - 10
end

a = sub_10.call 1000

pp a

puts


add_10 = -> number { pp number + 10 }
add_20 = -> number { pp number + 20 }
sub_5 =  -> number { pp number - 5 }

number = 1000

add_10.call number
add_20.call number
sub_5.call number

say_hi = lambda { puts "Hi" }
say_bye = lambda { puts "Bye" }
say_hi.call

week = %w[ say_hi say_hi say_hi say_hi say_hi say_bye say_bye ]

week.each do |f|
  f.call
end
puts

sub_10 = lambda do |x|
  x - 10
end

a = sub_10.call 1000
puts a
puts

add_10 = lambda { |x| puts x + 10 }
add_20 = lambda { |x| puts x + 20 }
sub_5 = lambda { |x| puts x - 5 }

num = 1000

add_10.call num
add_20.call num
sub_5.call num

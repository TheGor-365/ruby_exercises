print "Thtring, pleathe: "
input = gets.chomp.downcase!

if user_input.include? 's'
  user_input.gsub!(/s/, 'th')
else
  puts 'Nothing to do here'
end

puts "Your string is: #{input}"

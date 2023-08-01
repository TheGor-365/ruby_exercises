full_name = "Mia Smith Jr."

pp full_name.send("count", "i")
pp full_name.send("size")
pp full_name.send(:upcase)
pp full_name.send(:downcase).split

puts
puts


pp full_name.respond_to?(:split)

puts

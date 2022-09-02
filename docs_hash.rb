# !! Hash.new, Hash puts
# rating = Hash.new
# rating[:Gor] = 32
# puts rating
# puts
# puts [:Gor]
# puts
# puts "#{rating[:Gor]}"
# puts
# puts "#{:Gor} #{rating[:Gor]}"

# !! New Hash
# h = {}
# h[:Gor] = "cool man", "realy"
#
# puts "#{:Gor} #{h[:Gor][0]}, #{h[:Gor][1]}"

# ! New Hahs
# h = Hash.new
# x = 0
# h = {'a' => 32, 'b' => 33, 'c' => x}
# h['a'] = 32
# h['b'] = 33
# h['c'] = x
# puts h.keys
# puts
# puts h.values
# puts
# h.each do |key, value|
#   puts "#{key} #{value}"
# end
# puts
# h.each_key do |key|
#   puts "#{key} #{h[key]}"
# end

# ???Hash x
# h = Hash.new("Gor")
# puts h

# !!! delete key
# h = { "a" => 100, "b" => 200 }
# h.delete("a")
# h.each do |k, v|
#   puts "#{k} #{v}"
# end

# !delete value
# h = { "a" => 100, "b" => 200 }
# h.delete(100)
# h.each do |k, v|
#   puts "#{k} #{v}"
# end

# ?! delete faund
# h = { "a" => 100, "b" => 200 }
# h.delete("e") {|el| "#{el} not found!"}
# puts h["e"]

#

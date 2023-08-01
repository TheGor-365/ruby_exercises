string = 'xyz'

enum = string.enum_for(:each_byte)
pp enum

enum.each { |byte| puts byte }

puts

array = [ 1, 2, 3 ]
pp array.to_enum

def some_method array
  pp array
end

some_method(array.to_enum)

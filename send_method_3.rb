class Something
  attr_accessor :name, :age, :country

  def initialize hash
    hash.each do |key, value|
      send("#{key}=", value)
    end
  end
end



something = Something.new name: 'Mike', age: 60, country: 'USA'

pp something

puts

pp something.name
pp something.age
pp something.country

puts

something.name = 'Steve'
pp something

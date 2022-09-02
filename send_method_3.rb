class Something
  attr_accessor :name, :age, :country

  def initialize hash
    hash.each do |key, value|
      send("#{key}=", value)
    end
  end
end

pp s = Something.new(name: 'Mike', age: 60, country: 'USA')
puts
p s.name
p s.age
p s.country
puts
s.name = 'Steve'
pp s

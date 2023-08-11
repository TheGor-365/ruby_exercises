pp Struct.new("Customer", :name, :address)
pp Struct::Customer.new("Dave", "123 Main")

pp Customer = Struct.new(:name, :address)
pp Customer.new("Eric", "321 Secondary")

puts
puts


pp AnotherCustomer = Struct.new(:name, :address, keyword_init: true)
pp AnotherCustomer.new(name: "Dave", address: "123 Main")

puts
puts


ThirdCustomer = Struct.new(:name, :address) do
  def greeting
    "Hello #{name}!"
  end
end

pp ThirdCustomer.new("Third Customer", "123 Main").greeting

puts
puts


pp SecondCustomer = Struct.new(:name, :address)
pp SecondCustomer.new("Dave", "123 Main")

pp SecondCustomer["Dave"]
pp SecondCustomer["John"]

puts
puts


pp FirstCustomer = Struct.new(:name, :address, :zip)
pp joe   = FirstCustomer.new("Joe Smith", "123 Maple, Anytown NC", 12345)
pp joejr = FirstCustomer.new("Joe Smith", "123 Maple, Anytown NC", 12345)
pp jane  = FirstCustomer.new("Jane Doe", "456 Elm, Anytown NC", 12345)

pp joe == joejr
pp joe == jane

puts
puts


pp LastCustomer = Struct.new(:name, :address, :zip)
pp joe = LastCustomer.new("Joe Smith", "123 Maple, Anytown NC", 12345)

pp joe["name"]
pp joe[:name]
pp joe[0]

puts
puts


pp GreatCustomer = Struct.new(:name, :address, :zip)
pp joe = GreatCustomer.new("Joe Smith", "123 Maple, Anytown NC", 12345)

pp joe["name"] = "Luke"
pp joe[:zip]   = "90210"

pp joe.name
pp joe.zip

puts
puts


pp BigCustomer = Struct.new(:name, :address, :zip)
pp joe = BigCustomer.new("Joe Smith", "123 Maple, Anytown NC", 12345)

pp joe.to_a[1]

puts
puts


pp Foo = Struct.new(:a)
pp f = Foo.new(Foo.new({b: [1, 2, 3]}))

pp f.dig(:a, :a, :b, 0)
pp f.dig(:b, 0)

puts
puts


pp EachCustomer = Struct.new(:name, :address, :zip)
pp joe = EachCustomer.new("Joe Smith", "123 Maple, Anytown NC", 12345)

pp joe.each { |x| puts x }
pp joe.length
pp joe.members
pp joe.to_a[1]

puts
puts


pp PairCustomer = Struct.new(:name, :address, :zip)
pp joe = PairCustomer.new("Joe Smith", "123 Maple, Anytown NC", 12345)

pp joe.each_pair { |name, value| puts("#{name} => #{value}") }

puts
puts


pp SelectLots = Struct.new(:a, :b, :c, :d, :e, :f)
pp l = SelectLots.new(11, 22, 33, 44, 55, 66)

pp l.select { |v| v.even? }

puts
puts


pp HashCustomer = Struct.new(:name, :address, :zip)
pp joe = HashCustomer.new("Joe Smith", "123 Maple, Anytown NC", 12345)

pp joe.to_h[:address]
pp joe.to_h{ |name, value| [name.upcase, value.to_s.upcase] }[:ADDRESS]

puts
puts


pp ValuesCustomer = Struct.new(:name, :address, :zip)
pp joe = ValuesCustomer.new("Joe Smith", "123 Maple, Anytown NC", 12345)

pp joe.values_at(0, 2)

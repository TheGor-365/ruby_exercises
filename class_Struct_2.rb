Struct.new('Customer', :name, :address)
pp Struct::Customer.new('Dave', '123 Main'); puts

Customer = Struct.new(:name, :address)
pp Customer.new('Eric', '321 Secondary'); puts






pp AnotherCustomer = Struct.new(:name, :address, keyword_init: true)
pp AnotherCustomer.new(name: 'Dave', address: '123 Main'); puts






ThirdCustomer = Struct.new(:name, :address) do
  def greeting
    "hey '#{name}'"
  end
end
pp ThirdCustomer.new('Third Customer', '123 Main').greeting; puts






SecondCustomer = Struct.new(:name, :address)
pp SecondCustomer.new('Dave', '123 Main')
pp SecondCustomer['Dave']
pp SecondCustomer['John']; puts






FirstCustomer = Struct.new(:name, :address, :zip)
pp joe   = FirstCustomer.new('Joe Smith', '123 Maple, Anytown NC', 12345)
pp joejr = FirstCustomer.new('Joe Smith', '123 Maple, Anytown NC', 12345)
pp jane  = FirstCustomer.new('Jane Doe', '456 Elm, Anytown NC', 12345)
pp joe == joejr
pp joe == jane; puts






LastCustomer = Struct.new(:name, :address, :zip)
pp joe = LastCustomer.new('Joe Smith', '123 Maple, Anytown NC', 12345)
pp joe['name']
pp joe[:name]
pp joe[0]; puts






GreatCustomer = Struct.new(:name, :address, :zip)
pp joe = GreatCustomer.new('Joe Smith', '123 Maple, Anytown NC', 12345)
pp joe['name'] = 'Luke'
pp joe[:zip]   = '90210'
pp joe.name
pp joe.zip; puts






BigCustomer = Struct.new(:name, :address, :zip)
pp joe = BigCustomer.new('Joe Smith', '123 Maple, Anytown NC', 12345)
pp joe.to_a[1]; puts






Foo = Struct.new(:a)
pp f = Foo.new(Foo.new({b: [1, 2, 3]}))
pp f.dig(:a, :a, :b, 0)
pp f.dig(:b, 0); puts






EachCustomer = Struct.new(:name, :address, :zip)
pp joe = EachCustomer.new('Joe Smith', '123 Maple, Anytown NC', 12345)
pp joe.each { |x| puts x }
pp joe.length
pp joe.members
pp joe.values.join(', ')
pp joe.to_a[1]; puts






PairCustomer = Struct.new(:name, :address, :zip)
pp joe = PairCustomer.new('Joe Smith', '123 Maple, Anytown NC', 12345)
pp joe.each_pair { |name, value| puts("#{name} => #{value}") }; puts






SelectLots = Struct.new(:a, :b, :c, :d, :e, :f)
pp member = SelectLots.new(11, 22, 33, 44, 55, 66)
pp member.select { |value| value.even? }; puts






HashCustomer = Struct.new(:name, :address, :zip)
pp joe = HashCustomer.new('Joe Smith', '123 Maple, Anytown NC', 12345)
pp joe.to_h[:address]
pp joe.to_h{ |name, value| [name.upcase, value.to_s.upcase] }[:ADDRESS]; puts






ValuesCustomer = Struct.new(:name, :address, :zip)
pp joe = ValuesCustomer.new('Joe Smith', '123 Maple, Anytown NC', 12345)
pp joe.values_at(0, 2)

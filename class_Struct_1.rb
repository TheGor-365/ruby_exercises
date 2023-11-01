Customer = Struct.new(:name, :address) do
  def greeting
    "Hello #{name}"
  end
end


dave = Customer.new('Dave', '123 Main')

pp dave
pp dave.name
pp dave.address
pp dave.greeting
pp dave.members
pp dave.to_h

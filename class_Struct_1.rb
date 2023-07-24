Customer = Struct.new(:name, :address) do
  def greeting
    "Hello #{name}!"
  end
end

pp dave = Customer.new("Dave", "123 Main")
puts

pp dave.name
pp dave.address
pp dave.greeting

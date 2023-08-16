Customer = Struct.new(:name, :address) do
  def greeting
    "Hello #{name}"
  end
end

dave = Customer.new('Dave', '123 Main')
pp dave

puts

pp dave.name
pp dave.address
pp dave.greeting

puts

pp dave.members

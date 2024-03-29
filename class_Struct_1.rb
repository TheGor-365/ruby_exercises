Customer = Struct.new(:name, :address) do
  def greeting
    "hey #{name}, from #{address}"
  end
end


dave = Customer.new('Dave', '23 Main Street')

pp dave; puts

pp dave.name
pp dave.address; puts

pp dave.greeting; puts

pp dave.members
pp dave.values
pp dave.to_a; puts

pp dave.to_h

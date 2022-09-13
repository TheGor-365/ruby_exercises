Customer = Struct.new(:name, :address) do
  def greeting
    "Hello #{name}!"
  end
end

pp dave = Customer.new("Dave", "123 Main")
pp dave.name     #=> "Dave"
pp dave.greeting #=> "Hello Dave!"

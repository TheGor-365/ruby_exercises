class MyClass
  def initialize number
    @number = number
  end
end

pp one = MyClass.new(1)
pp two = MyClass.new(2)

puts

# one.number

pp one.instance_eval { @number }
pp two.instance_eval { @number }

puts

array = []
array << one.instance_eval { @number }
array << two.instance_eval { @number }
pp array

puts

one.instance_eval do
  def number
    @number
  end
end

pp one.number

# pp two.number

puts

MyClass.class_eval do
  def number
    @number
  end
end

pp two.number

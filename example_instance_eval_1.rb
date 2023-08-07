class MyClass
  def initialize num
    @num = num
  end
end

pp one = MyClass.new(1)
pp two = MyClass.new(2)

puts

# one.num

pp one.instance_eval { @num }
pp two.instance_eval { @num }

puts

array = []
array << one.instance_eval { @num }
array << two.instance_eval { @num }
pp array

puts

one.instance_eval do
  def num
    @num
  end
end

pp one.num

# pp two.num

puts

MyClass.class_eval do
  def num
    @num
  end
end

pp two.num

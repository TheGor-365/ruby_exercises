module Kernel
  def kernel_method
    puts "hi from kernel"
  end
end

TEST = "main namespace"

module NameSpace
  class Animal
    TEST = "my constant"

    def initialize name
      @name = name
    end

    def hello
      puts "Hello my name is #{@name}"
      kernel_method
    end

    def hey; puts ::TEST; end
  end
end


p klass = NameSpace::Animal
puts
p obj = klass.new("test")
puts
p NameSpace::Animal::TEST
p klass::TEST
puts
p TEST
puts
p obj.hello
p obj.hey
puts

p klass.class
p klass.class.superclass
p klass.class.superclass.superclass
p klass.class.superclass.superclass.superclass
p klass.class.superclass.superclass.superclass.superclass
puts
p obj.class
p obj.class.superclass
p obj.class.superclass.superclass
p obj.class.superclass.superclass.superclass

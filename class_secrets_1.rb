module Kernel
  def kernel_method
    pp 'hi from kernel'
  end
end

TEST = 'main namespace'

module NameSpace
  class Animal
    TEST = 'my constant'

    def initialize name
      @name = name
    end

    def hello
      pp "Hello my name is #{@name}"
      kernel_method
    end

    def hey; puts ::TEST; end
  end
end


klass = NameSpace::Animal
pp klass

puts

object = klass.new('test')
pp object

puts

pp NameSpace::Animal::TEST
pp klass::TEST

puts

pp TEST

puts

pp object.hello
pp object.hey

puts

pp klass.class
pp klass.class.superclass
pp klass.class.superclass.superclass
pp klass.class.superclass.superclass.superclass
pp klass.class.superclass.superclass.superclass.superclass

puts

pp object.class
pp object.class.superclass
pp object.class.superclass.superclass
pp object.class.superclass.superclass.superclass

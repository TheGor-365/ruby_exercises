module SomeModule
  class FirstClass
  end

  class SecondClass
    def initialize(list)
      @list = list
    end

    attr_accessor :list
  end

  class ThirdClass
    def initialize(param)
      @param = param
    end

    attr_accessor :param
  end

  Answer = 42

  def self.included(mod)
    constants.each do |cons|
      class_eval do
        klass = ::SomeModule.const_get(cons)

        if klass.class == Class
          define_method cons do |*args, &block|
            klass.new(*args, &block)
          end
        end
      end
    end
  end
end



include SomeModule


pp FirstClass; puts

second_class_instance = SecondClass([1,2,3])
third_class_instance = ThirdClass 42

pp second_class_instance.list
pp third_class_instance.param; puts

pp Answer

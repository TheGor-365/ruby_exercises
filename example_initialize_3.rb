module SomeModule
  def self.included(base)
    base.class_eval do
      original_method = instance_method(:initialize)

      define_method(:initialize) do |*args, &block|
        original_method.bind(self).call(*args, &block)
        @param.push 4
        @param.push 5
      end
    end
  end
end

class SomeClass
  attr_accessor :param
  attr_reader :show

  def initialize(param)
    @param = param
    @show = @param.reverse
  end

  include SomeModule
end



param = [ 1, 2, 3 ]

pp some_instance = SomeClass.new(param)
pp some_instance.param
pp some_instance.show

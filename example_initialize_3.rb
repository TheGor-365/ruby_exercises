module SomeModule
  def self.included(base)
    base.class_eval do
      original_method = instance_method(:initialize)

      define_method(:initialize) do |*args, &block|
        original_method.bind(self).call(*args, &block)
        @param.push 4
      end
    end
  end
end

class SomeClass
  attr_accessor :param

  def initialize
    @param = [ 1, 2, 3 ]
  end

  include SomeModule
end



pp SomeClass.new
pp SomeClass.new.param

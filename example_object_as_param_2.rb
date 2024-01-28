class Container
  attr_accessor :value

  def initialize(value)
    @value = value
  end
end

def some_method(param, *result)
  result << param.value += 1 while param.value < 10
  result
end



pp container = Container.new(5); puts

pp some_method(container)
pp container.value; puts





def arr_method(param)
  param[0] += 1
end


pp instance = [5]

pp arr_method(instance)
pp instance[0]

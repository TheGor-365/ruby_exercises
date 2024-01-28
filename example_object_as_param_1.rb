class SomeClass
  def some_method
    'Class: SomeClass'
  end
end

class AnotherClass
  def initialize(your_object)
    @your_object = your_object
  end

  def some_method(param=nil)
    'Class: AnotherClass'
    @your_object ? @your_object.some_method : 'no object'
  end
end

pp some_class   = SomeClass.new
pp anoter_class = AnotherClass.new(some_class)

pp anoter_class.some_method

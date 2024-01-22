module SomeModule
  def test_method
    'ok'
  end
end

class SomeClass
  def initialize(add_module)
    singleton_class.include(SomeModule) if add_module
  end
end




pp SomeClass.new(true).test_method
pp SomeClass.new(SomeModule).test_method
pp SomeClass.new('something').test_method

# pp SomeClass.new.test_method
# pp SomeClass.new(false).test_method

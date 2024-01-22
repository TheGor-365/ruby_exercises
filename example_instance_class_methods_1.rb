class SomeClass
  def self.some_class_method
    self
  end

  def some_instance_method
    self.class.some_class_method
  end
end



pp SomeClass.some_class_method
pp SomeClass.new.some_instance_method

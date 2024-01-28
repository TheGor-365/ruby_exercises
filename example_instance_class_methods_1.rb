class SomeClass
  def self.class_method
    self
  end

  def instance_method
    self.class.class_method
  end
end



pp SomeClass.class_method
pp SomeClass.new.instance_method

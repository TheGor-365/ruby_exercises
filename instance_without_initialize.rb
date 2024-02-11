class Class
  def new(*arguments, **options, &block)
    object = allocate
    object.send(:initialize, *arguments, **options, &block)
    object
  end
end





class MyClass
  def self.extraNew(*arguments)
    object = allocate
    object.pre_initialize(:foo)
    object.initialize(*arguments)
    object.post_initialize(:bar)
    object
  end
end





class Object
  def set_instance_variables(binding, *variables)
    variables.each do |var|
      instance_variable_set(:"@#{var}", eval(var.to_s, binding))
    end
  end
end

class RGBColor
  def initialize(red=0, green=0, blue=0)
    set_instance_variables(binding, *local_variables)
  end
end

pp RGBColor.new(255, 0, 255)

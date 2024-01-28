class SomeClass
  def update_param
    update(:@param)
  end

 def update(param_name)
   instance_variable_set(param_name, 1)
 end

 def print_param
   @param * 10
 end
end



pp some_class = SomeClass.new; puts

pp some_class.update_param
pp some_class.print_param; puts
pp some_class

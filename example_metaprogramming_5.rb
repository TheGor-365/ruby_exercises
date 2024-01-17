class SomeClass
  def foo
    @foo
  end

  def foo=(value)
    @foo = value
  end
end

class SomeClass
  attr_accessor :foo, :bar
end



define_method attr do |value = not_provided, &block|
  if value === not_provided && block.nil?
    result = instance_variable_get("@#{attr}")
    result.is_a?(Proc) ? instance_eval(&result) : result
  else
    instance_variable_set("@#{attr}", block || value)
  end
end

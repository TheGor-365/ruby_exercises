class TestInstanceVariables
  @@class_variable = "BBQ"
  @class_instance_variable_1 = "WTF"
  @class_instance_variable_2 = "LOL"

  def self.class_method
    puts "@@class_variable           == #{@@class_variable           || 'nil'}"
    puts "@class_instance_variable_1 == #{@class_instance_variable_1 || 'nil'}"
    puts "@class_instance_variable_2 == #{@class_instance_variable_2 || 'nil'}"
    puts "@instance_variable         == #{@instance_variable         || 'nil'}"
  end

  def initialize
    @instance_variable = "omg"
    @class_instance_variable_1 = "wtf"
    puts "@@class_variable           == #{@@class_variable           || 'nil'}"
    puts "@class_instance_variable_1 == #{@class_instance_variable_1 || 'nil'}"
    puts "@class_instance_variable_2 == #{@class_instance_variable_2 || 'nil'}"
    puts "@instance_variable         == #{@instance_variable         || 'nil'}"
  end

  def instance_method
    puts "@@class_variable           == #{@@class_variable           || 'nil'}"
    puts "@class_instance_variable_1 == #{@class_instance_variable_1 || 'nil'}"
    puts "@class_instance_variable_2 == #{@class_instance_variable_2 || 'nil'}"
    puts "@instance_variable         == #{@instance_variable         || 'nil'}"
  end
end


pp TestInstanceVariables.class_method

puts

test_inatance_variables = TestInstanceVariables.new

pp test_inatance_variables

puts

pp test_inatance_variables.instance_method

puts

pp TestInstanceVariables.class_method

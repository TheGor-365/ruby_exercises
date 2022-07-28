module Cat

  def self.my_attr_accessor *attributes
    attributes.each do |attribute|
      define_method "#{attribute}" do
        self.instance_variable_get "@#{attribute}"
      end
      define_method "#{attribute}=" do |value|
        self.instance_variable_set"@#{attribute}", value
      end
    end
  end

  my_attr_accessor :name, :age, :weight

  def initialize name, age, weight
    @name, @age, @weight = name, age, weight
  end

end

class Tiger
  include Cat
  # @@r = 15
  # R = 12
end

tiger = Tiger.new('Boris', 5, '133_kg')

puts tiger.name
puts tiger.age
puts tiger.weight

# print "\n" * 2 + 'tiger.methods' + "\n"  + '-' * 80 + "\n"
# puts tiger.methods
#
# print "\n" * 2 + 'tiger.public_methods' + "\n"  + '-' * 80 + "\n"
# puts tiger.public_methods
#
# print "\n" * 2 + 'tiger.private_methods' + "\n"  + '-' * 80 + "\n"
# puts tiger.private_methods
#
# print "\n" * 2 + 'tiger.singleton_methods' + "\n"  + '-' * 80 + "\n"
# p tiger.singleton_methods
#
# print "\n" * 2 + 'tiger.respond_to?("Boris")' + "\n"  + '-' * 80 + "\n"
# p tiger.respond_to?("Boris")
#
# print "\n" * 2 + "tiger.class" + "\n" + "-" * 80 + "\n"
# p tiger.class
#
# print "\n" * 2 + "tiger.instance_of?(Tiger)" + "\n" + "-" * 80 + "\n"
# p tiger.instance_of?(Tiger)
#
# print "\n" * 2 + "tiger.instance_variables" + "\n" + "-" * 80 + "\n"
# p tiger.instance_variables
#
# print "\n" * 2 + "tiger.instance_variable_get(:@age)" + "\n" + "-" * 80 + "\n"
# p tiger.instance_variable_get(:@age)
#
# print "\n" * 2 + "tiger.instance_variable_set(:@age, 6)" + "\n" + "-" * 80 + "\n"
# p tiger.instance_variable_set(:@age, 6)
#
# puts
# puts tiger.age
# puts
#
# print "\n" * 2 + "Tiger.methods" + "\n" + "-" * 80 + "\n"
# pp Tiger.methods
#
# print "\n" * 2 + "Tiger.instance_methods" + "\n" + "-" * 80 + "\n"
# pp Tiger.instance_methods
#
# print "\n" * 2 + "Tiger.class_variables" + "\n" + "-" * 80 + "\n"
# pp Tiger.class_variables
#
# print "\n" * 2 + "Tiger.ancestors" + "\n" + "-" * 80 + "\n"
# pp Tiger.ancestors
#
# print "\n" * 2 + "Tiger.include?(::Cat)" + "\n" + "-" * 80 + "\n"
# p Tiger.include?(::Cat)
#
# print "\n" * 2 + "Tiger.included_modules" + "\n" + "-" * 80 + "\n"
# p Tiger.included_modules
#
# print "\n" * 2 + "Tiger.class_variable_defined?(:@@r)" + "\n" + "-" * 80 + "\n"
# p Tiger.class_variable_defined?(:@@r)

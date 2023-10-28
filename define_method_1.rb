module Cat
  def self.my_attr_accessor(*attributes)
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

  def initialize(name, age, weight)
    @name, @age, @weight = name, age, weight
  end

  def attribute
    puts "attr_name: #{@name}"
  end
end

class Tiger
  include Cat
  @@r = 15
  R = 12
end


pp tiger = Tiger.new('Boris', 5, '133_kg')


puts


pp tiger.name
pp tiger.age
pp tiger.weight
tiger.attribute


puts


print "\n" * 2 + "Tiger.class_variables" + "\n" + "-" * 80 + "\n"
pp Tiger.class_variables

print "\n" * 2 + "Tiger.ancestors" + "\n" + "-" * 80 + "\n"
pp Tiger.ancestors

print "\n" * 2 + "Tiger.include?(::Cat)" + "\n" + "-" * 80 + "\n"
pp Tiger.include?(::Cat)

print "\n" * 2 + "Tiger.included_modules" + "\n" + "-" * 80 + "\n"
pp Tiger.included_modules

print "\n" * 2 + "Tiger.class_variable_defined?(:@@r)" + "\n" + "-" * 80 + "\n"
pp Tiger.class_variable_defined?(:@@r)

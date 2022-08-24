class Cat
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

  def initialize(name, age, weight)
    @name, @age, @weight = name, age, weight
  end
end

cat = Cat.new 'Kitty', 4, 23
p cat
p cat.name
p cat.age
p cat.weight

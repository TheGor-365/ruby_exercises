class Cat
  def self.my_attr_accessor(*attributes)
    attributes.each do |attribute|
      define_method attribute do
        self.instance_variable_get "@#{attribute}"
      end
      define_method "#{attribute}=" do |value|
        self.instance_variable_set "@#{attribute}", value
      end
    end
  end

  my_attr_accessor :name, :age, :weight

  def initialize(name, age, weight)
    @name, @age, @weight = name, age, weight
  end
end



cat_1 = Cat.new 'Kitty', 4, 23

pp cat_1

pp cat_1.name
pp cat_1.age
pp cat_1.weight; puts




cat_2 = Cat.new 'PETTY', 3, 11 do |c|
  c
  c.name
  c.age
  c.weight
end

pp cat_2

pp cat_2.name
pp cat_2.age
pp cat_2.weight

class Person
  def initialize(attributes)
    assign(attributes)
  end

  private

  def assign(attributes)
    attributes.each do |key, value|
      instance_variable_set("@#{key}, value")
    end
  end
end





module ActionView
  class Base
    def initialize(assigns)
      assign(assigns)
    end

    def assign(assigns)
      assigns.each { |key, value| instance_variable_set("@#{key}", value) }
    end
  end
end





class Person
  def initialize(name, age, address, data)
    @name, @age, @address, @data = name, age, address, data
  end
end





class Person
  def initialize(assigns)
    assign(assigns)
  end

  private

  def assign(attributes)
    attributes.each do |key, value|
      instance_variable_set("@#{key}", value)
    end
  end
end


pp person = Person.new(name: 'Akshay', age: 31); puts
pp person.instance_variable_get("@name")
pp person.instance_variable_get("@age")

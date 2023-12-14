class Employee; end

class Manager
  attr_accessor :name, :department, :age
  @@all = []

  def initialize(name, department, age)
    @name, @department, @age = name, department, age
    @@all << self
  end

  def self.all
    @@all
  end

  def employees
    Employee.all.select { |employee| employee.manager == self }
  end

  def self.all_department
    self.all.map { |manager| manager.department }.uniq
  end
end



yu     = Manager.new 'Yu', 'Accounting', 34
ted    = Manager.new 'Ted', 'Accounting', 35
bob    = Manager.new 'Bob', 'HR', 22
sandra = Manager.new 'Sandra', 'Designe', 54

pp Manager.all
pp Manager.all_department
pp self

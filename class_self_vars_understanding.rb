class Manager

  @@all = []
  attr_accessor :name, :department, :age

  def initialize name, department, age
    @name = name
    @department = department
    @age = age
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

yu = Manager.new 'Yu', 'Accounting', 34
ted = Manager.new 'Ted', 'Accounting', 35
bob = Manager.new 'Bob', 'HR', 22
sandra = Manager.new 'Sandra', 'Designe', 54

pp Manager.all
pp Manager.all_department
pp self

ben = Employee.new 'Ben', 25000, yu, project_manager
lisa = Employee.new 'Lisa', 100000, lisa, designer
mark = Employee.new 'Mark', 50000, mark, copywriter
sally = Employee.new 'Sally', 60000, sally, coffee_maker

yu.employees

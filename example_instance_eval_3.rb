class Student
  attr_accessor :name, :grade, :dob, :allergies, :previous_school

  @@all_students = []

  def initialize name
    @name = name
    @allergies = []
    self.class.all_students << self
  end

  def self.all_students
    @@all_students
  end
end


steve = Student.new("Steve")

steve.grade = 11
steve.dob = 20010501
steve.allergies << "penicillin"
steve.allergies << "tree nuts"

pp steve

puts
puts

sam = Student.new("Sam").tap do |s|
  s.grade = 10
  s.dob = 20100928
  s.allergies << "cats"
  s.allergies << "pollen"
end

pp sam

puts
puts

previous_school = 'Sunny Shores Middle School-Middlesburg-MI'
split_array = previous_school.split("-")

previous_school_hash = {
  name:  split_array[0],
  city:  split_array[1],
  state: split_array[2]
}

steve.previous_school = previous_school_hash

pp steve.previous_school
pp steve.previous_school[:name]

puts

steve.previous_school = previous_school.split("-").tap do |array|
  {
    name:  array[0],
    city:  array[1],
    state: array[2]
  }
end

pp steve.previous_school

puts
puts

steve.previous_school = previous_school.split("-").instance_eval do |array|
  {
    name:  array[0],
    city:  array[1],
    state: array[2]
  }
end

pp steve.previous_school

puts
puts

pp Student.all_students

class ClassRoom
   def initialize(students)
      @students = students
   end

   def list_student_names
      @students.map(&:name).join(',')
   end
end


describe ClassRoom do
  it 'the list_student_names method should work correctly' do
    student_1 = double('student')
    student_2 = double('student')

    student_1.stub(:name).and_return('John Smith')
    student_2.stub(:name).and_return('Jill Smith')

    class_room = ClassRoom.new [studen_t1, student_2]
    expect(class_room.list_student_names).to eq('John Smith,Jill Smith')
  end
end

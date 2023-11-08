class Book
  attr_reader :last_person, :persons

  def initialize(name)
    @last_person, @name, @persons = '', name, {}
  end

  def add_person(options)
    return 'Already exists' if @persons[options[:name]]

    @last_person = [options[:name]]
    @persons[options[:name]] = options[:age]
  end

  def show_all
    @persons.keys.each do |name|
      age = @persons[name]
      pp "#{@name} Name: #{name} Age: #{@persons[name]}"
    end
  end
end


book_1 = Book.new 'MAN'
book_2 = Book.new 'WOMAN'

book_1.add_person name: 'Walt',  age: 33
book_2.add_person name: 'Alice', age: 32
book_2.add_person name: 'Kate',  age: 44

book_1.show_all
book_2.show_all; puts


puts book_1.persons
puts book_2.persons
puts book_2.last_person

class Book
  attr_reader :last_person, :persons

  def initialize name
    @last_person = ''
    @name = name
    @persons = {}
  end

  def add_person options
    @last_person = [options[:name]]

    puts "Already exists!" if @persons[options[:name]]

    @persons[options[:name]] = options[:age]
  end

  def show_all
    @persons.keys.each do |name|
      age = @persons[name]
      puts "#{@name}\t Name: #{name}\t Age: #{@persons[name]}"
    end
  end
end


book1 = Book.new 'MAN'
book2 = Book.new 'WOMAN'

book1.add_person name: 'Walt',   age: 33
book2.add_person name: 'Alice', age: 32
book2.add_person name: 'Kate',   age: 44

book1.show_all
book2.show_all
puts

puts book1.persons
puts book2.persons
puts

puts book2.last_person

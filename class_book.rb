class Book
  attr_reader :last_person, :hh

  def initialize name
    @last_person = ''
    @name = name
    @hh = {}
  end

  def add_person options
    @last_person = [options[:name]]

    puts "Already exists!" if @hh[options[:name]]

    @hh[options[:name]] = options[:age]
  end

  def show_all
    @hh.keys.each do |key|
      age = @hh[key]
      puts "#{@name} | Name: #{key}, age: #{@hh[key]}"
    end
  end
end


book1 = Book.new 'MAN'
book2 = Book.new 'WOMAN'

book1.add_person name: 'Walt',   age: 33
book2.add_person name: 'Jessie', age: 32
book2.add_person name: 'Eric',   age: 44

book1.show_all
book2.show_all
puts

puts book1.hh
puts book2.hh
puts

puts book2.last_person

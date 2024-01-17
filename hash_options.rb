@book = {}

def add_person(options)
  pp 'Already exists' if @book[options[:name]]

  @book[options[:name]] = options[:age]
end

def show_book
  @book.keys.each do |name|
    age = @book[name]
    pp "Name: #{name}, age: #{@book[name]}"
  end
end

loop do
  print 'Input name: '
  name = gets.strip.capitalize

  show_book if name == ''

  print 'Input age: '
  age = gets.strip

  add_person name: name, age: age
end

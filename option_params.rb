@hash = {}

def add_person options
  puts 'Already exists' if @hash[options[:name]]
  @hash[options[:name]] = options[:age]
end

def show_hash
  @hash.keys.each do |name|
    age = @hash[name]
    puts "Name: #{name}, age: #{age}"
  end
end

loop do
  print "Enter name: "
  name = gets.strip.capitalize

  if name == ''
    show_hash
    exit
  end

  print "Enter age: "
  age = gets.to_i

  options = {:name => name, :age => age}
  add_person options
end

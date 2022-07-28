@hh = {}

def add_person options
  puts 'Already exists' if @hh[options[:name]]
  @hh[options[:name]] = options[:age]
end

def show_hash
  @hh.keys.each do |name|
    age = @hh[name]
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

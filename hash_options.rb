@hh = {}

def add_person options
  puts "Already exists!" if @hh[options[:name]]

  @hh[options[:name]] = options[:age]
end

def show_hh
  @hh.keys.each do |key|
    age = @hh[key]
    puts "Name: #{key}, age: #{@hh[key]}"
  end
end

loop do
  print "Input name: "
  name = gets.strip.capitalize

  show_hh  if name == ""

  print "Input age: "
  age = gets.strip

  add_person :name => name, :age => age
end

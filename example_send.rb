class Klass
  def hello *arguments
    puts 'Hello ' +  arguments.join(' ')
  end
end



klass = Klass.new

klass.send :hello, 'gentle', 'readers'
klass.public_send :hello, 'gentle', 'readers'

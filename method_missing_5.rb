module SomethingEx
  def method_missing(method_name, *arguments)
    arguments.each { |argument| pp argument }
  end
end

class Names
  extend SomethingEx
  method_with_custom_name 'Polly', 'Eric', 'John'
end
puts

pp something = Names.new
puts
puts
puts



module SomethingIn
  def method_missing(method_name, *arguments)
    arguments.each { |argument| pp argument }
  end
end

class Names
  include SomethingIn
end

pp something = Names.new
puts

something.method_with_custom_name 'Polly', 'Eric', 'John'
puts
puts
puts



module SomethingHash
  def method_missing(method_name, **arguments)
    arguments.each do |name, value|
      pp name
    end
  end
end

class Names
  include SomethingHash
end

pp something = Names.new
puts

something.method_with_custom_name polly: 'Polly', eric: 'Eric', john: 'John'

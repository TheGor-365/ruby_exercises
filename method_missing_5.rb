module SomethingEx
  def method_missing(method_name, *arguments)
    arguments.each { |argument| pp argument }
  end
end

class Names
  extend SomethingEx
  method_with_custom_name 'Polly', 'Eric', 'John'
end; puts


something = Names.new
pp something



puts



module SomethingIn
  def method_missing(method_name, *arguments)
    arguments.each { |argument| pp argument }
  end
end

class Names
  include SomethingIn
end


something = Names.new
pp something; puts

something.method_with_custom_name 'Polly', 'Eric', 'John'



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


something = Names.new
pp something; puts

something.method_with_custom_name polly: 'Polly', eric: 'Eric', john: 'John'

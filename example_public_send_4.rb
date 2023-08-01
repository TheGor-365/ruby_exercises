class Klass
  private
  def private_method
    puts "Hello"
  end
end


klass_instance = Klass.new

klass_instance.send(:private_method)
# => "Hello"

klass_instance.public_send(:private_method)
# => `public_send': private method `private_method' called for #<Klass:0x007f5fd7159a80> (NoMethodError)

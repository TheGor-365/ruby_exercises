print 'Name of method to define: '
method_name = gets.strip

send :define_method, method_name do
  pp 'Hello, I am new method'
end

send method_name

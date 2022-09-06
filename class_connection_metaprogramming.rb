class Connection
  def self.add_connection_variable name
    define_method name do
      instance_variable_get "@#{name}"
    end
    define_method "#{name}=" do |value|
      instance_variable_set "@#{name}", value
    end
  end

  add_connection_variable :timeout
  add_connection_variable :protocol
end

p connection = Connection.new
puts
p connection.timeout = 4
p connection.instance_variables
puts
p connection.protocol
p connection.protocol = 'qnq'
p connection.instance_variables
puts
p connection
p connection.protocol = 'ssh'
p connection

module Something
  def method_missing(method_name, *arguments)
    arguments.each { |arg| pp arg }
  end
end

class SomethingElse
  extend Something
  method_from_something 'Polly', 'Eric', 'John'
end

pp s = SomethingElse.new

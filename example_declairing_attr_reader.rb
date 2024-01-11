class SomeClass
  def initialize
    @first, @second = 11, 222

    instance_variables.each do |instance_variable|
      self.class.send(:attr_reader, instance_variable.to_s[1..-1].to_sym)
    end
  end
end

pp some_iv = SomeClass.new; puts

pp some_iv.first
pp some_iv.second

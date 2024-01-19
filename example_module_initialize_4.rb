module Wrapper
  def self.for(klass, accessor_name: nil)
    mod = const_set("#{klass}InstanceMethods", Module.new)

    mod.module_eval do
      define_method :initialize do |object|
        @object = object
      end

      method_name = accessor_name || begin
        klass_name = klass.to_s.gsub(/(.)([A-Z])/, '\1_\2').downcase
        "original_#{klass_name}"
      end

      define_method(method_name) { @object }
    end

    mod
  end
end


class IntWrapper
 include Wrapper.for(Integer)
end



pp interger_wrapper = IntWrapper.new(42)
pp interger_wrapper.original_integer
pp interger_wrapper = IntWrapper.new('42'); puts



class StringWrapper
 include Wrapper.for(String, accessor_name: :the_string)
end



pp string = StringWrapper.new('Hey')
pp string.the_string

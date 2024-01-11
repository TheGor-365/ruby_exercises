module Configurable
  def self.with(*attrs)
    not_provided = Object.new

    config_class = Class.new do
      attrs.each do |attr|
        define_method attr do |value = not_provided|
          if value === not_provided
            instance_variable_get("@#{attr}")
          else
            instance_variable_set("@#{attr}", value)
          end
        end
      end
      attr_writer *attrs
    end

    class_methods = Module.new do
      def configure(&block)
        config.instance_eval(&block)
      end
    end
  end
end

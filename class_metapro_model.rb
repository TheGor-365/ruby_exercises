require 'date'

module Model
  def initialize(attrs = {})
    @attributes = {}

    self.class.attribute_options.each do |name, options|
      value = attrs.key?(name) ? attrs[name] : options.fetch(:default, nil)
      write_attribute(name, value)
    end
  end

  def write_attribute(name, value)
    options = self.class.attribute_options[name]
    @attributes[name] = self.class.convert(value, options[:type])
  end

  module ClassMethods
    def attribute_options
      @attribute_options || {}
    end

    def attribute(name, options = {})
      @attribute_options ||= {}
      @attribute_options[name] = options

      define_method name do
        @attributes[name]
      end

      define_method "#{name}=" do |value|
        write_attribute(name, value)
      end

      def convert(value, target_type)
        return value if value.nil?

        case target_type
        when :datetime then DateTime.parse value
        when :string   then String value
        when :integer  then Integer value
        when :boolean  then !!value
        end
      end
    end
  end

  def self.included(base)
    base.attr_reader :attributes
    base.extend(ClassMethods)
  end
end

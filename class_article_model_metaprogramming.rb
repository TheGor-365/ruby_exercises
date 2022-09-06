module Model
  def self.included base
    base.extend ClassMethods
  end

  attr_accessor :attributes

  module ClassMethods
    attr_reader :upcased

    def upcase attribute_name
      @upcased ||= []

      define_method "#{attribute_name}" do
        @attributes[attribute_name]
      end
      define_method "#{attribute_name}=" do |value|
        @attributes[attribute_name] = value
        value.upcase! if self.class.upcased.include? attribute_name
      end
      @upcased << attribute_name
    end
  end

  def initialize params
    @attributes = {}

    params.each do |name, value|
      @attributes[name] = value
      value.upcase! if self.class.upcased.include? name
    end
  end
end

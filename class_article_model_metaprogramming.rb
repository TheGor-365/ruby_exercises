module Model
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def upcase(attribute_name)
      @upcased ||= []
      @upcased << attribute_name
    end

    def upcased
      @upcased
    end
  end

  def initialize(params)
    @attributes = {}

    params.each do |name, value|
      value.upcase! if self.class.upcased.include?(name)
      @attributes[name] = value
    end
  end

  attr_reader :attributes
end

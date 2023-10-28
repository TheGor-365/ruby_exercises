class Something
  attr_accessor :first_attribute, :second_attribute

  def initialize(params)
    params.each do |name, value|
      send "#{name}=", value
    end
  end
end


something = Something.new first_attribute: 1, second_attribute: 2

pp something.first_attribute
pp something.second_attribute

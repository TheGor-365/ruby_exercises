class DeviceReporter
  def initialize device
    @device = device
  end

  def call
    pp device.public_send(:tech_details)
  end

  private
  attr_reader :device
end



class Device
  def initialize(name, type, price, model)
    @name, @type, @price, @model = name, type, price, model
  end

  def tech_details
    {
      'name':  name,
      'type':  type,
      'price': price,
      'model': model
    }
  end

  private
  attr_reader :name, :type, :price, :model

  def total_price
    price.to_i + (price.to_i * 0.16)
  end
end



device = Device.new("Moto G8 Plus", "cellphone", "350", "G8")
pp device

puts
puts

deviceReporter = DeviceReporter.new(device).call
deviceReporter

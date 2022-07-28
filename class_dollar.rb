class DollarRate
  attr_accessor :currency, :sum
  @@dollar_rate = 67.15

  def initialize currency, sum
    @currency = currency
    @sum = sum
    @result = 0
  end

  def self.menu
    puts "1 = Convert rubles"
    puts "2 = Convert dollars"
  end

  def convert
    case @currency
    when 1
      @result = @sum / @@dollar_rate
    when 2
      @result = @sum * @@dollar_rate
    end
    @result
  end

  def show_result
    puts "The sum: #{@sum}"
    puts "The converted sum: #{@result.round(2)}"
  end
end

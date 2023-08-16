class DollarRate
  attr_accessor :currency, :sum

  @@dollar_rate = 87.15

  def initialize currency, sum
    @currency, @sum = currency, sum
    @result = 0
  end

  def self.menu
    puts '1 = Convert rubles'
    puts '2 = Convert dollars'
  end

  def convert
    case @currency
    when 1 then @result = @sum / @@dollar_rate
    when 2 then @result = @sum * @@dollar_rate
    end
    @result
  end

  def show_result
    puts "The sum: #{@sum}"
    puts "The converted sum: #{@result.round(2)}"
  end
end


menu = DollarRate.menu

puts


rate_1 = DollarRate.new 2, 349

rate_1.convert
rate_1.show_result

puts


rate_2 = DollarRate.new 1, 65_678

rate_2.convert
rate_2.show_result

module MyNumber
  def self.reverse_integer(number)
    reversed_abs = number.abs.to_s.reverse.to_i
    number.positive? ? reversed_abs : -reversed_abs
  end
end

pp MyNumber::reverse_integer(13)
pp MyNumber::reverse_integer(-123)
pp MyNumber::reverse_integer(8900)

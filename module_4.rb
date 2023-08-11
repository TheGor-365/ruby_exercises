module MyNumber
  def self.reverse_int(num)
    reversed_abs = num.abs.to_s.reverse.to_i
    num.positive? ? reversed_abs : -reversed_abs
  end
end

pp MyNumber::reverse_int(13)
pp MyNumber::reverse_int(-123)
pp MyNumber::reverse_int(8900)

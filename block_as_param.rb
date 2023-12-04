numbers = [ 5, 4, 4, 4, 5, 5, 5 ]

def even?(_number, &block)
  _number % 2 == 0 ? (pp "#{_number} even") : yield
end

numbers.each do |number|
  even?(number) do
    pp "#{number} odd"
  end
end

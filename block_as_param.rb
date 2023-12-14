numbers = [ 5, 4, 4, 4, 5, 5, 5 ]

def even?(_number, &block)
  result = []
  result << (_number % 2 == 0 ? ("#{_number} even") : yield)
  pp result.join
end

numbers.each do |number|
  result = []
  even?(number) do
    result << "#{number} odd"
  end
  result.join
end

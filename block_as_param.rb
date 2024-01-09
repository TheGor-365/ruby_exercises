numbers = [ 5, 4, 4, 4, 5, 5, 5 ]



def even?(number, *result,  &block)
  result << (number % 2 == 0 ? "#{number} even" : yield)
  pp result
end

numbers.each do |number|
  odds = []
  even?(number) do
    odds << "#{number} odd"
  end; odds
end

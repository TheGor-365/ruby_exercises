def get_same_parity(numbers)
  return [] if numbers.empty?
  numbers.first.odd? ? numbers.select(&:odd?) : numbers.select(&:even?)
end

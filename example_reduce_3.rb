def reduce_sum(array)
  array.reduce(0) { |sum, num| sum + num }
end





def reduce_sum(array)
  array.reduce(:+)
end





def reduce_mult(nums)
  nums.reduce(1, :*)
end

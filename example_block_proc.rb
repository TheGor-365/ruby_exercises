def apply_blocks(data, blocks)
  blocks.reduce(data) { |acc, block| block.call(acc) }
end

plus_one = proc { |number| number + 1 }
double   = proc { |number| number * 2 }

puts apply_blocks(5, [plus_one, double])

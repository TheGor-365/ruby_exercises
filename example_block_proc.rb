def apply_blocks(data, blocks)
  blocks.reduce(data) do |acc, block|
    pp block.call(acc)
  end
end

plus_one = proc { |number| number + 1 }
double   = proc { |number| number * 2 }

apply_blocks(5, [plus_one, double])

def apply_blocks(data, blocks)
  blocks.reduce(data) { |acc, block| block.call(acc) }
end

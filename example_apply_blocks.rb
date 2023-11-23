def apply_blocks(data, blocks)
  blocks.reduce(data) do |acc, block|
    block.call(acc)
  end
end

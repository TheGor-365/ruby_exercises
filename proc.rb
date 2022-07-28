def apply_blocks(data, blocks)
  blocks.reduce(data) { |acc, block| block.call(acc) }
end

proc1 = proc { |x| x + 1 }
proc2 = proc { |x| x * 2 }

puts apply_blocks(5, [proc1, proc2])

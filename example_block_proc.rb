def apply_blocks(number, blocks)
  blocks.reduce(number) do |acc, block|
    pp block.call(acc)
  end
end

plus_one = proc { |number| number + 1 }
double   = proc { |number| number * 2 }
triple   = proc { |number| number ** 3}
square   = proc { |number| number / 2 }
even     = proc { |number| number % 2 }

apply_blocks(5, [ plus_one, double, triple, square, even ])

def apply_blocks(number, blocks)
  blocks.reduce(number) do |acc, block|
    pp block.call(acc)
  end
end



plus_one = proc { |number| number + 1 }
double   = proc { |number| number * 2 }
triple   = proc { |number| number ** 3}
half     = proc { |number| number / 2 }
even     = proc { |number| number % 2 }



apply_blocks(5, [ plus_one, double, triple, half, even ]); puts
apply_blocks(8, [ plus_one, double, half, even ]); puts
apply_blocks(14, [ plus_one, double, half ]); puts
apply_blocks(87, [ plus_one, half ]); puts
apply_blocks(111, [ half ]); puts

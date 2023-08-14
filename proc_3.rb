multiples_of_3 = Proc.new do |number|
  number % 3 == 0
end

pp (1..25).to_a.select(&multiples_of_3)

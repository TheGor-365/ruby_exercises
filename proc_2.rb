fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

double = Proc.new { |number| number * 2 }
doubled_fibs = fibs.collect(&double)

pp doubled_fibs

fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

double = Proc.new {|x| x * 2}
doubled_fibs = fibs.collect(&double)
puts doubled_fibs

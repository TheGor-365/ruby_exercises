numbers = [5, 4, 4, 4, 5, 5, 5]

def foo_m(_a, &block)
  _a % 2 == 0 ? (puts "even") : yield
end

numbers.each do |i|
  foo_m(i) { puts "odd" }
end

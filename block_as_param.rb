numbers = [5, 4, 4, 4, 5, 5, 5]

def even?(_a, &block)
  _a % 2 == 0 ? (puts "#{_a} even") : yield
end

numbers.each do |number|
  even?(number) { puts "#{number} odd" }
end

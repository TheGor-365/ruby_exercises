hash = {}

loop do
  print 'Enter product id: '
  id = gets.chomp

  print 'Enter amount (how much items you want to order): '
  amount = gets.chomp.to_i

  product_id = hash[id].to_i
  product_id += amount
  hash[id]   = product_id

  pp hash; puts

  total = 0
  hash.each do |name, value|
    total = total + value
  end
  puts "Total items in cart: #{total}"; puts
end

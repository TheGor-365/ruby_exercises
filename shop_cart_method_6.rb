orders = 'product_1=4,product_2=1,product_3=1,'

split_1 = orders.split(/,/)

pp split_1

puts

split_1.each do |product|
	split_2 = product.split(/=/)

	pp split_2
end

puts

split_1.each do |product|
	split_2 = product.split(/=/)
	split_3 = split_2[0].split(/_/)

	pp split_3
end

puts

split_1.each do |product|
	split_2 = product.split(/=/)
	split_3 = split_2[0].split(/_/)

	name 	= split_3[1]
	count = split_2[1]

	pp "Product name: #{name} Product count : #{count}"
end

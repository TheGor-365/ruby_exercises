orders = "product_1=4,product_2=1,product_3=1,"

s1 = orders.split(/,/)

puts s1.inspect
puts

s1.each do |x|
	s2 = x.split(/=/)

	puts s2.inspect
end
puts

s1.each do |x|
	s2 = x.split(/=/)
	s3 = s2[0].split(/_/)

	puts s3.inspect
end
puts

s1.each do |x|
	s2 = x.split(/=/)
	s3 = s2[0].split(/_/)

	key = s3[1]
	value = s2[1]

	puts "Product key: #{key} product count : #{value}"
end

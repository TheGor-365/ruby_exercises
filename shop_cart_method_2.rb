orders = "product_1=4,product_2=1,product_3=1,"

def parse_orders_line orders_line
	s1 = orders_line.split(/\,/)
	arr = []

	s1.each do |x|
		s2 = x.split(/\=/)
		s3 = s2[0].split(/\_/)

		id = s3[1]
		cnt = s2[1]

		arr2 = [id, cnt]

		arr.push arr2
	end
	return arr
end

puts (parse_orders_line orders).inspect

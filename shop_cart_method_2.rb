orders = "product_1=4,product_2=1,product_3=1,"

def parse_orders_line orders_line
	split_1 = orders_line.split(/\,/)
	array = []

	split_1.each do |product|
		split_2 = product.split(/\=/)
		split_3 = split_2[0].split(/\_/)

		id 		= split_3[1]
		count = split_2[1]

		array_2 = [id, count]

		array.push array_2
	end
	return array
end

pp parse_orders_line(orders)

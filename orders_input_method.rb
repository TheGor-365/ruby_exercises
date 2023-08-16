def parse_orders_input orders_input
  split_1 = orders_input.split(/,/)
  array   = []

  split_1.each do |element|
    split_2 = element.split(/\=/)
    split_3 = split_2[0].split(/_/)

    id    = split_3[1]
    count = split_2[1]

    array_2 = [id, count]
    array.push array_2
  end
  return array
end

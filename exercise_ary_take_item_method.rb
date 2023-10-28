def select_item(quantity, array)
  array = array.take quantity
end

pp select_item(2, %w[ 1 2 3 4 5 ])

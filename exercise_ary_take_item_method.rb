def select_item quantity, arr
  arr = arr.take quantity
end

p select_item(2, %w[1 2 3 4 5])

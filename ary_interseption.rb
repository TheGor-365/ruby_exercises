def intersection(ary1, ary2)
  ary3 = []
  ary1.sort.each do |item|
    ary3 << item if ary2.include?(item)
  end
  ary3
end

ary1 = [1, 8, 0]
ary2 = [1, 9, 0]

p intersection(ary1, ary2)

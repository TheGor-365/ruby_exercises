def intersection(ary1, ary2)
  resalt = []
  ary1.sort.each do |item|
    resalt << item if ary2.include?(item)
  end
  resalt
end

ary1 = [1, 8, 0]
ary2 = [1, 9, 0]

p intersection(ary1, ary2)

# !!! arr creating
# arr = [1, "1", :two, "three", 1.5]
# puts arr
# puts arr[3]

# !!!arr.new
# arr = [1, 2, 3]
# arr = Array.new(4, :Go)
# puts arr

# !?Array.new
# arr = Array.new(7) {|i| i.to_f}
# puts arr

# !?Array creating
# arr = Array.new(4){Array.new(3) {|i| i.to_s}}
# puts arr

# ! Array at
# arr = [1, 3, 9]
# arr.at(0)
# puts arr.at(2)

# !!!Take & Drop
# arr = [1, 2, 3, 4, 5]
# puts arr.take(3)
# puts
# puts arr.drop(1)

# ! push, unshift
# arr = [1, 2, 3, 4, 5, 6]
# arr.push("Gor")
# puts arr
# arr.unshift("Gor")
# puts arr

# !!! insert
# arr = [1, 2, 3, 4, 5, 6, 7]
# arr.insert(2, "Gor")
# puts arr

# !!pop & shift
# arr = [1, 2, 3, 4, 5, 6, 7]
# arr.pop(2)
# arr.shift(2)
# puts arr

# !!map
# arr = [1, 2, 3, 4, 5, 6, 7]
# arr = arr.map {|a| a**3}
# puts arr

# !!select || reject
# arr = [1, 2, 3, 4, 5, 6, 7]
# arr = arr.select {|x| x >= 5}
# puts arr

# !! new Array
# arr = [1, 2, 3, 4, 5, 6, 7]
# arr2 = Array.new(arr)
# puts arr2

# !! new arr
# z = Array.new(7){|x| x**3}
# puts z

# !!! assoc
# arr = [1, 2, 3, 4, 5, 6, 7]
# arr2 = ["a", "b", "c", "d", "e"]
# arr3 = [arr, arr2]
# puts arr3.assoc(1)

# !!! at
# arr = [1, 2, 3, 4, 5, 6, 7]
# print arr[3]
# print arr.at(3)

# ??? bsearch
# arr = [1, 2, 3, 4, 5, 6, 7]
# arr = arr.bsearch {|x| 1 + x / 4}
# puts arr

# !! clear
# arr = [1, 2, 3, 4, 5, 6, 7]
# puts arr.clear

# !! collect
# arr = [1, 2, 3, 4, 5, 6, 7]
# arr = arr.collect {|x| x.to_s + " Gor"}
# puts arr

#!map.with_index
arr = [1, 2, 3, 4, 5, 6, 7]
arr = arr.map.with_index {|x, i| "#{x} + #{i}"}
puts arr

#!? combination
# arr = [1, 2, 3, 4, 5, 6, 7]
# arr = arr.combination(6).to_a
# print arr

# !cycle
# arr = ["a", "b", "c", "d"]
# arr = arr.cycle(3) {|x| puts "#{x} + x"}

# !delete
# arr = ["a", "b", "c"]
# arr = arr.delete ("c") {"not foutd"}
# puts arr

# ! index
# arr = [1, 2, 3, 4, 5, 6, 7]
# puts arr.index {|x| x == 5}

# ! replace
# arr = [1, 2, 3, 4, 5, 6, 7]
# arr = arr.replace(["a", "b", "c"])
# puts arr

# ! insert
# arr = [1, 2, 3, 4, 5, 6, 7]
# arr = arr.insert(2, "Gor", "Gor")
# puts arr

# # join
# arr = [1, 2, 3, 4, 5, 6, 7]
# arr = arr.join(" - ")
# puts arr
# print arr

# first & last
# arr = [1, 2, 3, 4, 5, 6, 7]
# puts arr.first(2)
# print arr.last(2)

#! max & min
# arr = [1, 2, 3, 4, 5, 6, 7]
# puts arr.max
# puts arr.min
# puts

#! max & min
# arr = ["16", "Gor", "1"]
# puts arr.max
# puts arr.min

# ! permutation
# arr = [1, 2, 3, 4, 5, 6, 7]
# print arr.permutation.to_a
# puts
# print arr.permutation.(2).to_a

# ! product
# arr = [1, 2, 3, 4, 5, 6, 7]
# arr = arr.product(["Gor"])
# puts arr

# ??? rassoc
# arr = %w[[1, 2], [3, 4], [5, 6, 7]]
# arr = arr.rassoc("1")
# puts arr

# !? reverse_each
# arr = %w[1, 2, 3, 4, 5, 6, 7]
# arr.reverse_each{|x| print "#{x} + #{' '}"}

# !rindex
# arr = [1, 2, 3, 4, 4, 5, 6, 7]
# x = arr.rindex(4)
# puts x

# !rotate
# arr = [1, 2, 3, 4, 5, 6, 7]
# arr2 = arr.rotate(3)
# puts arr2

# ?!shuffle
# arr = [1, 2, 3, 4, 5, 6, 7]
# arr2 = arr.shuffle(random: Random.new(1))
# puts arr2

# !? sum
# arr = [1, 2, 3, 4, 5, 6, 7]
# puts arr.sum
# arr2 = ["1", "2", "3"]
# puts arr2.sum("")
# puts arr.join(" ")

# !sum
# arr = [1, 2, 3, 4, 5, 6, 7]
# arr2 = arr.sum{|x| x + x}
# puts arr2

#! values_at
# arr = [1, 2, 3, 4, 5, 6, 7]
# arr = arr.values_at(2..4)
# puts arr

# |!!
# arr = [1, 2, 3, 4, 5, 6, 7, "a"]
# arr2 = ["a", "b", "c", "d", 3]
# puts arr | arr2

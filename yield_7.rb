class Sum
  def initialize
    @values = []
  end

  def homework_each
    0.upto(@values.length-1) { |index| yield @values[index] }
  end
end






class Sum
  def initialize
    @sum = []
  end

  def each(&block)
    @sum.each &block
  end
end






class MyIterator
  include Enumerable

  def initialize(data=[])
    @data = data
  end

  def each
    @data.each do |item|
      yield item
    end
  end
end

iterator = MyIterator.new [ 1, 2, 3, 4 ]

result = iterator.each do |item|
  "item = #{item}"
end

pp result
pp iterator.map(&:next); puts






class Sum
  def initialize
    @sum = Array.new
  end

  def each
    @sum.each do |item|
      yield item
    end
  end
end







def new_map(array)
  new_array = []

  array.each do |item|
    new_array << yield(item)
  end; new_array
end

numbers = [ 1, 2, 3, 4 ]

result = new_map(numbers) do |item|
  item + 1000
end
pp result

words = %w[ cat hat bat ]

result = new_map words do |item|
  item.capitalize
end
pp result

require 'pp'


class SongList
  def [](key)
    if key.kind_of?(Integer)
      return @songs[key]
    else
      for index in 0...@songs.length
        return @songs[index] if key == @songs[index].name
      end
    end
    return nil
  end
end






class SongList
  def [](key)
    if key.kind_of?(Integer)
      result = @songs[key]
    else
      result = @songs.find { |aSong| key == aSong.name }
    end
    return result
  end
end






class SongList
  def [](key)
    return @songs[key] if key.kind_of?(Integer)
    return @songs.find { |aSong| aSong.name == key }
  end
end






def fib_up_to(max)
  number_1, number_2 = 1, 1
  result = []

  while number_1 <= max
    result << yield(number_1)
    number_1, number_2 = number_2, number_1 + number_2
  end; result
end

result = fib_up_to(1000) { |fib| fib }

pp result; puts





class Array
  def find
    for index in 0...size
      value = self[index]
      return value if yield(value)
    end
  end
end

array = [ 1, 3, 5, 7, 9 ]

result = array.find { |value| value*value > 30 }

pp result; puts






class Array
  def inject(number)
     each { |value| number = yield(number, value) }; number
  end

  def sum
    inject(0) { |number, value| number + value }
  end

  def product
    inject(1) { |number, value| number * value }
  end
end

array = [ 1, 2, 3, 4, 5 ]

pp array.sum
pp array.product; puts





def many_yields
  yield(:peanut)
  yield(:butter)
  yield(:and)
  yield(:jelly)
end

def test_methods_can_call_yield_many_times
  result = []
  many_yields { |item| result << item }
end

pp test_methods_can_call_yield_many_times; puts






class SomeClass
  def first_method(&block)
    second_method &block
  end

  def second_method
    yield
  end
end

pp SomeClass::new.first_method { 42 }; puts






class Example
  def first_method
    second_method { yield }
  end

  def second_method
    yield
  end
end

example_item = Example.new

pp example_item.first_method { 222 }; puts






@items = %w[ first second third ]

def each
  @items.each do |item|
    yield(item)
  end
end

array = []

@items.each { |item| array << item.upcase.to_sym }

pp array; puts






def my_select(collection)
  item, new = 0, []

  while item < collection.length
    if yield(collection[item]) % 2 == 0
      new << collection[item]
    end
    item += 1
  end; new
end

array = [ 1, 2, 3, 4, 5 ]

result = my_select(array) do |item|
  item
  item
end

pp result; puts






def tap_into
  yield(self)
  self
end

def and_then
  yield(self)
end

pp 'Ana'.tap { |name| "Hi, #{name.upcase}" }
pp 'Ana'.then { |name| "Hi, #{name.upcase}" }; puts
pp 'Ana'.tap { |name| puts "Hi, #{name.upcase}" }; puts






class Array
  def my_select
    array = []

    self.each do |item|
      array << item if yield(item)
    end; array
  end
end

pp [ 1, 2, 3, 4, 5, 6 ].my_select { |element| element.even? }; puts







module ModuleArray
  def my_select
    array = []

    self.each do |item|
      array << item if yield(item)
    end; array
  end
end

pp [ 1, 2, 3, 4, 5, 6 ].my_select { |element| element.odd? }

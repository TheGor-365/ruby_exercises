require 'ostruct'



def make_salad(*array)
  array << yield('lettuce')
  array << yield('carrots')
  array << yield('olive oil')
end

result = make_salad do |ingredient|
  ingredient
  ingredient.upcase
end

pp result; puts







def make_salad(ingredients)
  ingredients.map { |item| yield(item) }
end

ingredients = %w[ lettuce carrots olive-oil ]

result = make_salad ingredients do |ingredient|
  ingredient
  ingredient
end

pp result; puts







def make_salad(ingredients, *new_array)
  for ingredient in ingredients
    new_array.push yield ingredient
  end; new_array
end

array = %w[ lettuce carrots olive-oil ]

result = make_salad array do |word|
  word[0..2]
end

pp result; puts






class Salad
  attr_accessor :ingredient

  def initialize
    yield(self)
  end
end

salad = Salad.new do |s|
  s.ingredient = 'lettuce'
  s.ingredient = 'carrots'
  s.ingredient = 'olive-oil'
end

pp salad.ingredient
pp salad; puts






def items_sum(array, sum=0)
  array.each { |value| sum += yield(value) if value.kind_of?(Integer) }; sum
end

array = [ 1, 2, 3, 4 ]

result = items_sum(array) do |value|
  value
end

pp result; puts






def show(string)
  formatted_str = yield(string)
  formatted_str
end

string = 'hey'
array = []

result_1 = show string do |s|
  array << s * 5
  array << s * 3
end

result_2 = show string do |s|
  s * 5
  s * 3
end

pp result_1
pp result_2; puts






def great_method(*array)
  array << yield
  array << method(:great_method)
end

result = great_method {'great_method'}

pp result; puts






def greet(name)
  pp "You see #{name}"
  pp yield(name)
end

greet('Dave') { |person| "Hi #{person}!" }
greet('Dave') { |person| "#{person} says hello" }; puts






class Collection
  include Enumerable
  attr_accessor :items, :each

  def initialize(items)
    @items = items
  end

  def each
    @items.each { |item| yield item.upcase! }
  end
end

collection = Collection.new(['first', 'second', 'third'])

result = collection.items do |item|
  item.each
end

pp collection.items
pp result; puts






def yield_with_loop(*array)
  2.times { |index| array << yield(index) }; array
end

result = yield_with_loop { |index| "index: #{index}" }

pp result; puts






def conditional_yield(flag, *array)
  array << yield if flag
end

pp conditional_yield(true) { 'Yielded' }
pp conditional_yield(false) { 'Not yielded' }; puts






def yield_return_value(*array)
  result = yield
  array << "Block returned: #{result}"
end

result = yield_return_value { 3 * 7 }

pp result; puts






def multiple_yields
  result_1 = yield 'first'
  result_2 = yield 'second'
  "Results: #{result_1} and #{result_2}"
end

values = multiple_yields do |which|
  which == 'first' ? 10 : 20
end

pp values; puts






def conditional_yield
  yield ? 'true' : 'false'
end

pp conditional_yield { 5 > 3 }
pp conditional_yield { 3 > 5 }; puts






def descriptive_yield(*array)
  array << yield(age: 30, name: 'Alice')
end

result = descriptive_yield { |person| "Name: #{person[:name]}, Age: #{person[:age]}" }

pp result; puts






def each_with_attributes(attributes, &block)
  results[:matches].each_with_index do |match, index|
    args = attributes.collect { |attribute| (match[:attributes][attribute] || match[:attributes]["@#{attribute}"]) }
    yield self[index], *args
  end
end







class Application
   attr_accessor :config

  def initialize
    @config = OpenStruct.new
  end

  def configure
     yield config
  end
end

application = Application.new

result = application.configure do |config|
  config.hostname = 'example.com'
  config.protocol = 'https'
  config.theme = 'dark'
end

pp result
pp application
pp application.config
pp application.config.hostname
pp application.config.protocol
pp application.config.theme; puts






def select_and_add_10(array)
  array.each do |element|
    element + 10 if yield element
  end
end

array  = [ 1, 2, 3, 4, 5, 6, 7 ]
result = []

select_and_add_10 array do |element|
  result << (2 < element && element < 6)
end

pp result; puts






object = Object.new

def object.each
  yield 1
  yield 2
  yield 'word'
end

array = []

for item in object
  array << item
end

pp array; puts

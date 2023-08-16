define_method('first_example') do |fixed, default = {}|
  pp fixed
  pp default
end

first_example('Hello', key: :value)
first_example('Hello')

puts



define_method(:second_example) do |foo, bar|
  bar ||= {}
  pp foo
  pp bar
end

second_example('Hello', key: :value)
second_example('Hello', nil)

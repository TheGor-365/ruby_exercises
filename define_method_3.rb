send :define_method, 'aaa' do
  puts 'Hello, I am new method'
end

aaa


send :define_method, 'bbb' do
  puts 'Hello, I am newest method'
end

bbb

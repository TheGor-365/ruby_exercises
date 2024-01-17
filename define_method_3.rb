send :define_method, 'aaa' do
  pp 'Hello, I am new method'
end

aaa


send :define_method, 'bbb' do
  pp 'Hello, I am newest method'
end

bbb

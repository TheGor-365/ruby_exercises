send :define_method, "aaa" do
  puts "Hello, I'm new method"
end

aaa

send :define_method, "bbb" do
  puts "Hello, I'm newest method"
end

bbb

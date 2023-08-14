class Something
  def method_missing name
    puts "Calling umknown method #{name}"
  end
end

s = Something.new

pp s.aaa
pp s.sss

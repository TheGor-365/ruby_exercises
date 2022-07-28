class Something
  def method_missing name
    puts "Calling umknown method #{name}"
  end
end

s = Something.new
puts s.aaa
puts s.sss

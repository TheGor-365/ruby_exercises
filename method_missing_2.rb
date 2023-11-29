class Something
  def method_missing(name)
    pp "Calling umknown method #{name}"
  end
end



something = Something.new

pp something.aaa
pp something.sss

def mm names
  names.each do |k, v|
    puts "Hello, #{v.capitalize}"
  end
end

send :mm, :nick => 'Nick', :mike => 'Mike'

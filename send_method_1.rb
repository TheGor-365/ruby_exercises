def mm names
  names.each do |k, v|
    puts "Hello, #{v.capitalize}"
  end
end

send :mm, :nick => 'nick', :mike => 'mike'

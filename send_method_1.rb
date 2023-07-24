def value_upcaser params
  params.each do |name, value|
    puts "#{name}: #{value.upcase}"
  end
end

send :value_upcaser, nick: 'Nick', mike: 'Mike', eric: 'Alice'

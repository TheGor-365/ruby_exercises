class User
  def full_name
    puts "Johnnie Walker"
  end

  alias name full_name
end

pp User.new.name

puts



class User
  def full_name
    puts "Johnnie Walker"
  end

  alias_method :name, :full_name
end

pp User.new.name

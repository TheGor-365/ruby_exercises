class User
  def full_name
    pp 'Johnnie Walker'
  end

  def self.add_rename
    alias_method :name, :full_name
  end
end

class Developer < User
  def full_name
    pp 'Geeky geek'
  end
  add_rename
end


pp Developer.new.name; puts





class User
  def full_name
    pp 'Johnnie Walker'
  end

  def self.add_rename
    alias :name :full_name
  end
end

class Developer < User
  def full_name
    pp 'Geeky geek'
  end
  add_rename
end


pp Developer.new.name

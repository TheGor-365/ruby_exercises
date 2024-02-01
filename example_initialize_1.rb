module First
  def digit; 1; end
end

module Second
  def digit; 2; end
end

module Third
  def digit; 3; end
end

class Fourth
  include First

  def initialize(add_second, add_third)
    singleton_class.include(Second) if add_second
    singleton_class.include(Third)  if add_third
  end
end




pp Fourth.new(false, false).digit
pp Fourth.new(true, true).digit

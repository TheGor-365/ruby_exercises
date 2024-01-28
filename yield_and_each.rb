class RandomSequence
  def initialize(limit, num)
     @limit, @num = limit, num
  end

  def each(*result)
    result << 'in each'
    @num.times { yield(rand.tap { |value| result << value.round(4) } * @limit) }
    result
  end
end

index = -1

random_sequence = RandomSequence.new(10 ,4).each do |num|
  index = num if index < num
end

pp random_sequence

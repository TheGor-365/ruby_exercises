MutPoint = Struct.new(:x, :y) do
  def initialize(...)
    super
  end
end

pp p1 = MutPoint.new(1, 2)
pp p2 = MutPoint.new(x: 1, y: 2); puts





NutPoint = Struct.new(:x, :y) do
  def initialize(...)
    super
    self.y ||= 0
    self.x = x.to_i
    self.y = y.to_i
  end
end

pp NutPoint.new('1')





Word = Struct.new(:word, :sentence_id) do
  def initialize(word, sentence)
    super(word.strip, sentence.id)
  end
end

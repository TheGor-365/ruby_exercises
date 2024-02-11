class Board
  def initialize
    @cells = Array.new(9, nil)
  end

  def move(x, y, side)
    @cells[x + y * 3] ||= side
  end

  def to_s
    @cells.map do |cell|
      cell || ' '
    end.each_slice(3).map do |row|
      row.join(' | ')
    end.join("\n---------\n")
  end
end



board = Board.new

puts board; puts

board.move(0,1, 'X')
board.move(1,0, 'O')

puts board

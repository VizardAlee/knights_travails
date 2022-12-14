# frozen_string_literal: true

# Board class
class Board
  attr_accessor :grid

  def initialize
    @grid = Array.new(8) { Array.new(8) }
  end

  def place(location, piece)
    row, column = location
    grid[row][column] = piece
  end

  def out_of_bounds?(location)
    row, column = location
    row > grid.length || column > grid.first.length ||
      row.negative? || column.negative?
  end
  # targets
  # place pieces
  # out of bounds
  # get a piece
end

b = Board.new
loc = [4, 4]
b.place(loc, 'Aliyu')
p b.grid
p b.out_of_bounds?([0, 7])

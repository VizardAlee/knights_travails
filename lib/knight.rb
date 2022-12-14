# frozen_string_literal: true

# Knight's possible moves
# [2,1],[1,2],[-1,2],[-2,1],[-2,-1],[-1,-2],[1,-2],[2,-1]

# knight class
class Knight
  attr_reader :color, :board

  def initialize(board, location, color)
    @board = board
    @location = location
    @color = color
  end

  def move_directions
    [
      [2, 1],
      [1, 2],
      [-1, 2],
      [-2, 1],
      [-2, -1],
      [-1, -2],
      [1, -2],
      [2, -1]
    ]
  end

  def available_moves
    moves = []

    move_directions.each do |(dr, dc)|
      current_r, current_c = @location

      unless board.out_of_bounds?(@location)
        current_r += dr
        current_c += dc
        loc = [current_r, current_c]
        moves << loc
      end
    end
    moves
  end

  def to_s
    puts 'B.Knight'
  end
end

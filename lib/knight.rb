# frozen_string_literal: true

# knight class
class Knight
  attr_accessor :data, :position

  def initialize(data, position = nil)
    @data = data
    @position = position
  end
end

# frozen_string_literal: true

# node class
class BoardNode
  attr_accessor :left, :right

  def initialize()
    @left = nil
    @right = nil
  end
end
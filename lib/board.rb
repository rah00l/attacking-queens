require_relative 'queen'
require 'byebug'

class Board
  attr_reader :size, :pieces

  def initialize(size)
    @size = size
  end

  def assign_pieces
    @pieces = Array.new(pieces_to_assign).map do
      piece = assign_unique_pieces
      coordinates << piece.coordinates
      piece
    end
  end

  private

  def assign_unique_pieces
    x = random_in_range
    y = random_in_range

    unless coordinates.include? [x, y]
      piece = Queen.new
      piece.coordinates = [x, y]
      return piece
    end

    assign_unique_pieces
  end

  def range
    1..@size
  end

  def random_in_range
    Random.new.rand(range)
  end

  def pieces_to_assign
    (@size / 2).floor
  end

  def coordinates
    @coordinates ||= []
  end
end

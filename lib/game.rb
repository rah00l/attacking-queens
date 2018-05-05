require_relative 'ip_info'
require 'board'
class Game
  def initialize(ip = nil)
    @ip = ip
  end

  def run
    # Fetch the board size.
    board_size = IpInfo.new(@ip).latitude
    # Create the board with specified board size
    board = Board.new(board_size)
    board.assign_pieces

  end
end

Game.new('8.8.8.8').run

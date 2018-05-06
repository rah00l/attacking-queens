require_relative 'ip_info'
require_relative 'board'
class Game
  def initialize(ip = nil)
    @ip = ip || '8.8.8.8'
  end

  def run
    # Fetch the board size.
    board_size = IpInfo.new(@ip).latitude
    # Create the board with specified board size
    board = Board.new(board_size)
    board.assign_pieces

    result = board.attacking_coordinates
    result.any? ? result : 'true'
  end
end

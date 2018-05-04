require_relative 'ip_info'

class Game
  def initialize(ip = nil)
    @ip = ip
  end

  def run
    # Fetch the board size.
    board_size = IpInfo.new(@ip).latitude
  end
end

Game.new('8.8.8.8').run

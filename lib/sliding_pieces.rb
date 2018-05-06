class SlidingPieces
  def initialize(pieces)
    @pieces = pieces
    fail 'Two pieces and two pieces only to compaire!' if @pieces.count != 2
  end

  def attacking?
    diagonally? || vertically? || horizontally?
  end

  private

  def diagonally?
    difference_on_axis(:x) == difference_on_axis(:y)
  end

  def vertically?
    axis?(:x)
  end

  def horizontally?
    axis?(:y)
  end

  def axis?(axis)
    @pieces.map(&axis).reduce(&:==)
  end

  def difference_on_axis(axis)
    @pieces.map(&axis).reduce(&:-).abs
  end
end

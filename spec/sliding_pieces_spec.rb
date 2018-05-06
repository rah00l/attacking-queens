require 'spec_helper'
require_relative '../lib/sliding_pieces'
require_relative '../lib/queen'

RSpec.describe SlidingPieces do
  def create_queens(sets)
    sets.map do |coordinates|
      Queen.new.tap do |queen|
        queen.coordinates = coordinates
      end
    end
  end

  def matcher(sets)
    SlidingPieces.new(create_queens(sets)).attacking?
  end

  describe '#attacking?' do
    it 'verifies for horizontally attacking queens' do
      expect(matcher([[17, 9], [2, 9]])).to be true
    end

    it 'verifies for vertically attacking queens' do
      expect(matcher([[2, 5], [2, 8]])).to be true
    end

    it 'verifies for diagonally attacking queens' do
      expect(matcher([[6, 3], [3, 6]])).to be true
    end

    it 'returns false if queens cannot attack' do
      expect(matcher([[2, 2], [6, 5]])).to be false
    end
  end
end

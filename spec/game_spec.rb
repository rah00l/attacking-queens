require 'spec_helper'
require_relative '../lib/game'
require 'byebug'

RSpec.describe Game do
  let(:ip_info) { instance_double('IpInfo', latitude: 10) }
  before do
    allow(IpInfo).to receive(:new).and_return(ip_info)
  end

  describe '#run' do
    it 'returns either an array or string' do
      value = Game.new.run.class
      expect([String, Array]).to include(value)
    end
  end
end

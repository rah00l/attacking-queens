require 'spec_helper'
require_relative '../lib/game'
require 'byebug'

RSpec.describe Game do
  let(:ip_info) { instance_double('IpInfo', latitude: 10) }
  before do
    allow(IpInfo).to receive(:new).and_return(ip_info)
  end

  describe '#run' do
    it 'should return Queen class structure of unique coordinates on which a Queen will sit' do
      value = Game.new.run.class
      expect([Array]).to include(value)
    end
  end
end

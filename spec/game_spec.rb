require 'spec_helper'
require_relative '../lib/game'

RSpec.describe Game do
  let(:ip_info) { instance_double('IpInfo', latitude: 10) }
  before do
    allow(IpInfo).to receive(:new).and_return(ip_info)
  end

  describe '#run' do
    it 'returns latitude of provided ip address' do
      value = Game.new.run.class
      expect([Fixnum]).to include(value)
    end
  end
end

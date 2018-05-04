require 'httparty'

class IpInfo
  attr_reader :address

  def initialize(ip = nil)
    @address = ip || '8.8.8.8'
  end

  def latitude
    geodata = check['loc']
    fail 'Are you sure that place exists?' unless geodata
    puts "geodata loc -> #{geodata}"
    geodata.split(',').first.to_i
  end

  def check
    response = HTTParty.get("http://ipinfo.io/#{@address}")
    fail 'Whoops, are you connected to the Internet?' unless response
    response
  end
end

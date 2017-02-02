require_relative 'item.rb'

class Cd < Item
  attr_accessor :num_of_tracks, :artist, :total_runtime_in_s

  def initialize(name, price, num_of_tracks, artist, total_runtime_in_s)
    super(name, price)
    @num_of_tracks = num_of_tracks
    @artist = artist
    @total_runtime_in_s = total_runtime_in_s
  end
end

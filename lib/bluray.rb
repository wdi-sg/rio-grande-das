require_relative 'item.rb'

class Bluray < Item
  attr_accessor :total_runtime_in_s, :director, :producer

  def initialize(name, price, total_runtime_in_s, director, producer)
    super(name, price)
    @total_runtime_in_s = total_runtime_in_s
    @director = director
    @producer = producer
  end
end

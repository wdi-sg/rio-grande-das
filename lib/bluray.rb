require_relative 'item.rb'

class Bluray < Item
  attr_accessor :name, :price, :run_time, :director, :producer
  def initialize(run_time, director, producer)
    super(name,price)
      @run_time = run_time
      @director = director
      @producer =producer
  end

  def name
    
  end

  def price
  end

  def run_time
  end

  def director
  end

  def producer
  end

end

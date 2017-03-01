require_relative 'item.rb'

class Cd < Item
  def initialize(name, price)
    super(name, price)
    @tracks = tracks
    @artist = artist
    @run_time = run_time
  end


  def tracks

  end

  def artist

  end

  def run_time

  end
end











# class Item
#   attr_reader :quantity
#   attr_accessor :name, :price, :description
#
#   def initialize(name, price)
#     @name = name
#     @price = price
#     @quantity = 0
#     @description = ''
#   end
#
#   def sell(amount)
#     if @quantity >= amount
#       @quantity -= amount
#       true
#     else
#       false
#     end
#   end
#
#   def stock(amount)
#     @quantity += amount
#     true
#   end
# end

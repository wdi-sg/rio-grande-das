require_relative 'item.rb'

class Digital_Item < Item
  def initialize(name, price)
    super(name, price)
    @quantity = 1
  end

  def sell(amount)
    @quantity
  end

  def stock(amount)
    @quantity
  end
end

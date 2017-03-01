require_relative 'spec_helper'
require_relative '../lib/digital_item'

describe Digital_item do
  before(:context) do
    # initialize item
    @digital_item = Digital_Item.new('Introduction to Javascript', 45.00)
  end

  # check initialization
  describe 'Initialization' do
    it 'should be a digital item' do
      expect(@digital_item).to be_instance_of(Digital_item)
    end

    it 'should be an item' do
      expect(@digital_item).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@digital_item.name).to eq('Introduction to Javascript')
    end

    it 'is assigned a price' do
      expect(@digital_item.price).to eq(45.00)
    end
  end

  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @digital_item.quantity = '1'
      expect(@digital_item.quantity).to eq(1)
    end

    it 'quantity does not decrease when sold' do
        @digital_item.quantity = '1'
      expect(@digital_item.quantity).to ##not decrease
    end

    it 'quantity does not increase on stock' do
        @digital_item.quantity = '1'
      expect(@digital_item.author).to ##not increase
    end
  end
end

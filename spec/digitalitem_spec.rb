require_relative 'spec_helper'
require_relative '../lib/digital_item'

describe Digital_Item do
  before(:context) do
    # @digital_item = Digital_Item.new(name, price)
    @digital_item = Digital_Item.new('Boo boo e-book', 5.99)
  end

  describe 'Initialization' do
    it 'should be an instance of Digital_Item class' do
      expect(@digital_item).to be_instance_of(Digital_Item)
    end

    it 'should be a type of Item' do
      expect(@digital_item).to be_kind_of(Item)
    end

    it 'should have a default quantity of 1' do
      expect(@digital_item.quantity).to eq(1)
    end
  end

  describe 'Accessors' do
    it 'should be able to get and set name' do
      @digital_item.name = 'Head First Design Principles e-book'
      expect(@digital_item.name).to eq('Head First Design Principles e-book')
    end

    it 'should be able to get and set price' do
      @digital_item.price = 99
      expect(@digital_item.price).to eq(99)
    end
  end

  describe 'Methods' do
    it 'should not decrease quantity when sold' do
      @digital_item.sell(20)
      expect(@digital_item.quantity).to eq(1)
    end

    it 'should not increase quantity when stock is called' do
      @digital_item.stock(100)
      expect(@digital_item.quantity).to eq(1)
    end
  end
end

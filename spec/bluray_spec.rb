require_relative 'spec_helper'
require_relative '../lib/bluray'

describe Bluray do
  before(:context) do
    # initialize bluray instance
    @bluray = Bluray.new('Inception', 49.90, 8880, 'Christopher', 'Christopher Nolan')
  end

  # check initialization
  describe 'Initialization' do
    it 'should be an instance of Bluray class' do
      expect(@bluray).to be_instance_of(Bluray)
    end

    it 'should be a type of Item' do
      expect(@bluray).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@bluray.name).to eq('Inception')
    end

    it 'is assigned a price' do
      expect(@bluray.price).to eq(49.90)
    end

    it 'is assigned a total runtime in seconds' do
      expect(@bluray.total_runtime_in_s).to eq(8880)
    end

    it 'is assigned a director' do
      expect(@bluray.director).to eq('Christopher')
    end

    it 'is assigned an producer' do
      expect(@bluray.producer).to eq('Christopher Nolan')
    end
  end

  # check getters and setters
  describe 'Accessors' do
    it 'should be able to get and set name' do
      @bluray.name = 'Inception 2?'
      expect(@bluray.name).to eq('Inception 2?')
    end

    it 'should be able to get and set price' do
      @bluray.price = 12.90
      expect(@bluray.price).to eq(12.90)
    end

    it 'should be able to get and set total runtime in seconds' do
      @bluray.total_runtime_in_s = 1234
      expect(@bluray.total_runtime_in_s).to eq(1234)
    end

    it 'should be able to get and set director' do
      @bluray.director = 'Chrissie Nolan'
      expect(@bluray.director).to eq('Chrissie Nolan')
    end

    it 'should be able to get and set producer' do
      @bluray.producer = 'Christopher Nolan, Emma Thomas'
      expect(@bluray.producer).to eq('Christopher Nolan, Emma Thomas')
    end
  end
end

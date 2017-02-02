require_relative 'spec_helper'
require_relative '../lib/cd'

describe Cd do
  before(:context) do
    # initialize cd instance
    @cd = Cd.new('White Christmas', 20.0, 9, 'Michael Buble', 2160)
  end

  # check initialization
  describe 'Initialization' do
    it 'should be an instance of Cd class' do
      expect(@cd).to be_instance_of(Cd)
    end

    it 'should be a type of Item' do
      expect(@cd).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@cd.name).to eq('White Christmas')
    end

    it 'is assigned a price' do
      expect(@cd.price).to eq(20.0)
    end

    it 'is assigned a number of tracks' do
      expect(@cd.num_of_tracks).to eq(9)
    end

    it 'is assigned an artist' do
      expect(@cd.artist).to eq('Michael Buble')
    end

    it 'is assigned a total run time in seconds' do
      expect(@cd.total_runtime_in_s).to eq(2160)
    end
  end

  # check getters and setters
  describe 'Accessors' do
    it 'should be able to get and set name' do
      @cd.name = 'Holly Jolly Christmas'
      expect(@cd.name).to eq('Holly Jolly Christmas')
    end

    it 'should be able to get and set price' do
      @cd.price = 29.90
      expect(@cd.price).to eq(29.90)
    end

    it 'should be able to get and set number of tracks' do
      @cd.num_of_tracks = 111
      expect(@cd.num_of_tracks).to eq(111)
    end

    it 'should be able to get and set artist' do
      @cd.artist = 'Michelle Buble'
      expect(@cd.artist).to eq('Michelle Buble')
    end

    it 'should be able to get and set total runtime in seconds' do
      @cd.total_runtime_in_s = 9999
      expect(@cd.total_runtime_in_s).to eq(9999)
    end
  end
end

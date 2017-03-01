require_relative 'spec_helper'
require_relative '../lib/cd'

describe Cd do
  before(:context) do
    # initialize item
    @cd = Cd.new(10, 'Guns and Roses', 50 )
  end

describe 'Initialization' do
  it 'should be a Cd' do
    expect(@cd).to be_instance_of(Cd)
  end
  it 'should be an item' do
    expect(@cd).to be_kind_of(Item)
  end
  it 'is assienged tracks(number of)' do
    expect(@cd.tracks).to eq(10)
  end
  it 'is assienged an artist' do
    expect(@cd.artist).to eq('Guns and Roses')
  end
  it 'is assigned a run time' do
    expect(@cd.run_time).to eq(50)
  end
end
  # check initialization
  # check that it is an extended from Item
  # check that it is an instance of Cd
  # check getters and setters

  describe 'getters and setters' do
    it 'assigns and reads the tracks' do
      @cd.tracks = 15
      expect(@cd.tracks).to eq(15)
    end
    it 'assigns and reads the artist' do
      @cd.artist = 'Blink 182'
      expect(@cd.artist).to eq('Blink 182')
    end
    it 'assigns and reads the run time' do
      @cd.run_time= 40
      expect(@cd.run_time).to eq(40)
    end
  end
end

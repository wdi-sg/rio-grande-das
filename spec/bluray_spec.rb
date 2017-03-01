require_relative 'spec_helper'
require_relative '../lib/bluray'

describe Bluray do
  before(:context) do
    @bluray = Bluray.new(129, 'Bill Condon', 'David Hoberman')
  end

  # check initialization
  describe 'Initialization' do
    # check that it is an instance of Bluray
    it 'should be an instance of Bluray class' do
      expect(@bluray).to be_instance_of(Bluray)
    end

    # check that it is an extended from Item
    it 'should be a child element of Item' do
      expect(@bluray).to be < Item
    end

  end
end

# check getters and setters
describe 'Accessors' do
  it 'should set/get run_time' do
    @bluray.run_time = 137
    expect(@bluray.run_time).to eq(137)
  end
  it 'should set/get director' do
    @bluray.director = 'James Mangold'
    expect(@bluray.director).to eq('James Mangold')
  end
  it 'should set/get producer' do
    @bluray.producer = 'Hutch Parker'
    expect(@bluray.producer).to eq('Hutch Parker')
  end
end

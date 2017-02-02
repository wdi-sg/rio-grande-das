require_relative 'spec_helper'
require_relative '../lib/book'

describe Book do
  before(:context) do
    # initialize item
    @book = Book.new('Harry Potter', 15.00, 700, 'JK Rowling')
  end

  # check initialization
  describe 'Initialization' do
    it 'should be an instance of Book class' do
      expect(@book).to be_instance_of(Book)
    end

    it 'should be a type of Item' do
      expect(@book).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@book.name).to eq('Harry Potter')
    end

    it 'is assigned a price' do
      expect(@book.price).to eq(15.00)
    end

    it 'is assigned pages' do
      expect(@book.pages).to eq(700)
    end

    it 'is assigned an author' do
      expect(@book.author).to eq('JK Rowling')
    end
  end

  # check getters and setters
  describe 'Accessors' do
    it 'should be able to get and set name' do
      @book.name = 'Paradise Lost'
      expect(@book.name).to eq('Paradise Lost')
    end

    it 'should be able to get and set price' do
      @book.price = 20.00
      expect(@book.price).to eq(20.00)
    end

    it 'should be able to get and set pages' do
      @book.pages = 0
      expect(@book.pages).to eq(0)
    end

    it 'should be able to get and set author' do
      @book.author = 'John Milton'
      expect(@book.author).to eq('John Milton')
    end
  end
end

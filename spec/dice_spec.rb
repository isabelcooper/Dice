require 'dice'
require_relative 'spec_helper'

describe Dice do
  before(:all) do
    @dice = Dice.new
    @result = @dice.roll
    @result2 = @dice.roll(2)
  end

  it 'should respond to roll command' do
    expect(subject).to respond_to(:roll)
  end

  it 'should respond to roll command with number of times' do
    expect(subject).to respond_to(:roll).with(1).argument
  end

  # it 'should output a number on roll' do
  #   expect(@result).to be_a Fixnum
  # end

  it 'should output a random number (1..6) on roll' do
    batch1 = []
    batch2 = []
    batch1 << 100.times{@dice.roll}
    batch2 << 100.times{@dice.roll}
    expect(batch1).to eq batch2
  end

  it 'should return a random number (srand test)' do
    expect(@result).to eq [3]
  end

   it 'should output an array on 2 or more rolls' do
     expect(@result).to be_a_kind_of Array
   end

  # it 'should output a fixed number between 1 and 6 on roll' do
  #     expect(1..6).to cover(@result)
  # end

  it 'should output an array to the size of the number of rolls' do
    expect(@result2.count).to eq(2)
  end

  # it 'should output an array of random numbers between 1 and 6 on roll' do
  #   expect([1..6]).to include( @result2 )
  # end

end

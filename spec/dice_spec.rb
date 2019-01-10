require 'dice'

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

  it 'should output a random number (1..6) on roll' do
    batch1 = []
    batch2 = []
    batch1 << 100.times{@dice.roll}
    batch2 << 100.times{@dice.roll}
    expect(batch1).to eq batch2
  end

  it 'should return a random number (srand test)' do
    expect(@result).to eq [2]
  end

   it 'should output an array on 2 or more rolls' do
     expect(@result).to be_a_kind_of Array
   end

  it 'should output an array to the size of the number of rolls' do
    expect(@result2.count).to eq(2)
  end

  it 'should output an array of random numbers between 1 and 6 on roll' do
    expect(@result2).to eq [1,3]
  end

  it 'should pretty print the results of the roll(s)' do
  #  expect(@dice).to respond_to(:pretty_print)
     expect(@dice.pretty_print(@result)).to eq "You rolled a 3"
  #  expect(@dice.pretty_print(@result)).to output("You rolled a 2").to_stdout
  #  expect(@result2.pretty_print).to eq "You rolled a 2 and a 4"
  end

end

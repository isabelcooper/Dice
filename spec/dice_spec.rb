require 'dice'

describe Dice do
  before(:all) do
    @dice = Dice.new
    @result = @dice.roll
  end

  it 'should respond to roll command' do
    expect(subject).to respond_to :roll
  end

  it 'should output a number on roll' do
  #arrange, act, assert
    expect(@result).to be_a Fixnum
  end

  it 'should output random number between 1 and 6 on roll' do    
  end
end

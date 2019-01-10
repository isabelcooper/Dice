class Dice
#  attr_reader :number_of_rolls

   # def initialize(number_of_rolls = 1)
   #   @number_of_rolls = number_of_rolls
   # end

  def roll(number_of_rolls = 1)
    result = []
    number_of_rolls.times { result << rand(1..6)}
    result
  end
end

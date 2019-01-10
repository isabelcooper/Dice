class Dice

  DICE_SIDES = 6

  def roll(number_of_rolls = 1)
    result = []
    number_of_rolls.times { result << rand(DICE_SIDES)}
    result
  end

#not passing
  def pretty_print(result)
  #  "You rolled a #{result.to_s}"
  end

end

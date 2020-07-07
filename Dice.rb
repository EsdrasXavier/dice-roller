class Dice
  attr_reader :dice_limit

  def initialize(dice_limit = 6)
    @dice_limit = dice_limit
  end

  def roll
    rand(1..@dice_limit)
  end

  def dice_range
    "1..#{@dice_limit}"
  end
end
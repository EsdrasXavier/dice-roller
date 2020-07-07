class Dice
  attr_reader :dice_limit

  DICE_LIMIT = 6

  def initialize(dice_limit = DICE_LIMIT)
    @dice_limit = dice_limit
  end

  def roll
    rand(1..dice_limit)
  end

  def dice_range
    "1..#{dice_limit}"
  end
end

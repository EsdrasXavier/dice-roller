load './Dice.rb'

class Game
  def initialize
    @dice = Dice.new
    @dice_value = @dice.roll
  end

  class GameWrongNumberError < StandardError
    def message
      "Wrong number"
    end
  end

  class GameNumberTooBigError < StandardError
    def message
      "You must enter a smaller number"
    end
  end

  def play
    print "Guess a number between #{@dice.dice_range}:"
    user_number = gets.to_i

    raise GameNumberTooBigError if user_number > @dice.dice_limit
    raise GameWrongNumberError if @dice_value != user_number
    
    puts "Congrats, you won!"
  end
end


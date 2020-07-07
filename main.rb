load './Game.rb';

game = Game.new

begin
  game.play
rescue Game::GameWrongNumberError, Game::GameNumberTooBigError => e
  puts e.message
  retry
end

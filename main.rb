require "./game"
require "./player"
require "./question"

# Create players
player1 = Player.new("Bob")
player2 = Player.new("Sally")

# Create new game
new_game = Game.new(player1, player2)

# Start game
new_game.run_game
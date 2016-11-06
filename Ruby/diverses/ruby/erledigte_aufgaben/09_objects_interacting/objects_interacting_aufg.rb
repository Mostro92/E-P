
require_relative 'klasse_game'
require_relative 'klasse_player'

player1 = Player.new("Moe",)
player2 = Player.new("Larry",60)
player3 = Player.new("Curly",125)

py = Game.new("FC Bayern")
py.add_player(player1)
py.add_player(player2)
py.add_player(player3)
py.play

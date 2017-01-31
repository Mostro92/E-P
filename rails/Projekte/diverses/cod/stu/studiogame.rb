require_relative "player"
require_relative "game"

player1 = Player.new('Moe')
player2 = Player.new('Larry', 60)
player3 = Player.new('Curly', 125)

players = [player1, player2, player3]

initgame = Game.new("Knuckleheads")
players.size.times do |i|
	initgame.add_player(players[i])
end

initgame.play
players.each do |player|
	player.blam
	player.w00t
	player.w00t
	puts player
	puts player.player_spec
end
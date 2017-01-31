# Player-Class
# In der player_spec muss also zuerst ein Kontext geschaffen werden, in der die Methode strong? abgefragt wird.
# Ist die eigenschaft health > 100, dann ist der Spieler strong, andernfalls wimpy.
In der player.rb:
def strong?
		@health >= 100
end

def player_spec
		strong? ? "#{@name} ist stark" : "#{@name} ist schwach"
end

In der studiogame.rb:
# players.each do |player|
# 	player.blam
# 	player.w00t
# 	player.w00t
# 	puts player
	puts player.player_spec
# end
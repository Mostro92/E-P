class Game

	def initialize(title)
		@title = title
		@players = []
	end
	def add_player(player)
		@players << player
	end
	def play
		count = @players.size
		puts "There are #{count} players in #{@title}"
		@players.each do |player|
			puts player
		end
		@players.each do |player|
			puts player.blam
			puts player.w00t
			puts player.w00t
			puts player
		end

	end
end

class Game
	def initialize(titel)
		@titel = titel
		@player = []
	end

	def add_player(player)
		@player << player
	end

	def play
		puts "These are #{@player.size} players in #{@titel}:"
		@player.each do |player|
			puts player
		end
	end
end
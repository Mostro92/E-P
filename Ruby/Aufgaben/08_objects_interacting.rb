class Game

	attr_accessor :health 

	def initialize(title,health,player)
		@title = title
		@player = []
	end
		def add_player(player)
		@player << player
		end
		def w00t
		@health = @health +10
		"#{@name} got w00ted to #{@health}."
		end

		def blam
		@health = @health -10
		"#{@name} got blamed to #{@health}."
		end	

	def play
		count = @players.size
		"There are #{count} players in #{@title}:"
		
		@players.each do |player|
			puts player
		end

		"I'm #{@name} with a health of #{@health} and a score of #{@health}."

		@players.each do |player|
			puts player.blam
			puts player.w00t
			puts player.w00t
			puts player
		end

		"I'm #{@name} with a health of #{@health} and a score of #{@health + @name.size}."

	end
	

	
end

player1 = Game.new("Knuckleland","Moe",100)
player2 = Game.new("Knuckleland","Larry",60)
player3 = Game.new("Knuckleland","Curly",125)

Game.add_player(player1)
Game.add_player(player2)
Game.add_player(player3)
Game.play
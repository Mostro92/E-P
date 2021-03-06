class Game
		def initialize(title)
			@title = title
			@player = []
		end
		def add_player(player)
			@player << player
		
		end
		def play
			puts "There are #{@player.size} Players in #{@title}\n"

				@player.each do |player|
					puts player.say_hello
				end
				@player.each do |player|
					puts player.blam
					puts player.woot
					puts player.woot
					puts player.say_hello
				end
		end
end




class Player
	attr_accessor :name
	attr_reader :health
	
	def initialize(name, health=100) 
		@name = name
		@health = health
		
	end

	def say_hello #to_s gibt dann aus ohne say_hello
		"I'm #{@name} with a health of #{@health} and a score of #{score}"
	end



	def blam
			@health -= 10
				
			"#{@name} got blamed"
					
		
	end

	def woot
		@health += 10
			"#{@name} got wooted"
	end

	def score
		@health + @name.length
	end


end


player1 = Player.new("Hans",24)
player2 = Player.new("Max",12)

player = [player1, player2]

Game1 = Game.new("Knuckleheads")
player.each do | player |
	Game1.add_player(player)
end
#kurzschreibweise
#player.each { |player| Game1.add_player(player)}

Game1.play
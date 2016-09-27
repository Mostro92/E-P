class Player
	def initialize(name,health = 100)
		@name = name
		@health = health

	end	

	def say_hello
		"Ich bin #{@name} mit einem Wert #{@health}"

	end

	def blame
		@health = @health - 10
		#@health += 10
	end

	def woot
		@health = @health + 10
		
		
	end

end	


player1 = Player.new("Marten")
player1.blame(10)
player1.blame(10)
player1.woot(10)
puts player1.say_hello

player2 = Player.new("Tobi")
puts player2.say_hello

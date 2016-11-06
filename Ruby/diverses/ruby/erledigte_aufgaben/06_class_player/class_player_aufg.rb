class Player

	def initialize(name,health=100)
		@name = name
		@health = health
	end

	def say_hello
	"Ich bin #{@name} mit einem Wert von #{@health}."
	end
	def to_s
	"Ich bin #{@name} mit einem Wert von #{@health}."
	end	
	def w00t
		@health += 10
		"#{@name} got w00ted to #{@health}."
	end
	def blam
		@health -= 10
		"#{@name} got blamed to #{@health}."
		end	
end
player1 = Player.new("Alf",90)
player2 = Player.new("Ulf")
puts player1.say_hello
player3 = Player.new("Tom")
puts player3.w00t
puts player2.blam
puts player3

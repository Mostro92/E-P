class Player

	def initialize(name,health=100)
		@name = name
		@health = health
	end

	attr_accessor :health
	# attr_reader :health
	# attr_writer :health

	

	def say_hello
	"Ich bin #{@name} mit einem Wert von #{@health}."
	end

	def to_s
	"I'm #{@name} with a health of #{@health} and a score of #{score}."
	end

	def score
		 @health + @name.size
	end

	def w00t
		@health = @health +10
		"#{@name} got w00ted to #{@health}."
	end

	def blam
		@health = @health -10
		"#{@name} got blamed to #{@health}."
		end	
end
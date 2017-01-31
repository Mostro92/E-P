class Player
	attr_reader :health
	attr_accessor :name

	def initialize(pname, phealth=100)
		@name = pname
		@health = phealth
	end

	def strong?
		@health >= 100
	end

	def player_spec
		strong? ? "#{@name} ist stark" : "#{@name} ist schwach"
	end

	def to_s
		"Ich bin #{@name} mit einem Wert von #{@health} und einem Score von #{score}"
	end

	def blam
		@health -=10
		puts "#{@name} wurde geblamt!!! Aktueller Stand: #{@health}"
	end
	def w00t
		@health += 10
		puts "#{@name} wurde gew00tet!!!! Aktueller Stand: #{@health}"
	end

	def score
		@health + @name.length
	end
end
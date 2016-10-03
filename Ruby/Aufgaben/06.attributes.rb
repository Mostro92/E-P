class Player1

	attr_accessor :health

	def initialize(health)
		
		@health = health
		


	end

	def attribute

		puts "#{@health}"


	end

	def normalized_health
		@health * 7
		
	end


end

play=Player1.new(20)
play.attribute
puts play.normalized_health.to_s
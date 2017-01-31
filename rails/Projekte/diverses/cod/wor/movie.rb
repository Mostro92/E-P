class Movie
	attr_accessor :titel
	def initialize(ptitel, prank = "")
		@titel = ptitel.capitalize
		@rank = prank
	end

	def hit?
		@rank >= 10
	end

	def status
		hit? ? "Hit" : "Flop"
	end

	def thumbs_up
		@rank += 1
	end

	def thumbs_down
		@rank -= 1
	end

	def to_s
		"#{@titel} hat ein Ranking von: #{@rank}."
	end
end
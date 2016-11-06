class Movie
	attr_accessor :title
	# attr_reader :title
	# attr_writer :title
	def initialize(ptitle, prank=0)
		@title = ptitle
		@rank = prank
	end
	def hit?
		@rank >= 10
	end
	def status
		#hit? ? "Hit" : "Flop"
		if hit?
			"Hit"
		else
			"Flop"
		end
	end	
	def thumbs_up
		@rank += 1
	end
	def thumbs_down
		@rank -= 1
	end
	def to_s
		"#{@title} hat ein Ranking von #{@rank}"
	end
end
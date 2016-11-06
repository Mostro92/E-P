class Movie
	

	def initialize(ptitle, prank=0)
		@title = ptitle.capitalize
		@rank = prank
	end

	def to_s
		"#{@title} hat ein Ranking von: #{@rank}."
	end

	def thumps_up
		@rank += 1
		#@rank = @rank + 1
	end
	def thumps_down
		@rank -= 1
		#@rank = @rank - 1
	end

end

obj_movie1 = Movie.new('Ninjo', 4)
obj_movie2 = Movie.new('Ninja')
puts obj_movie1.to_s
puts obj_movie2.to_s
obj_movie1.thumps_up
puts obj_movie1.to_s



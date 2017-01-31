class Playlist
	def initialize(name)
		@name = name
		@movies = []
	end

	def add_movie(movie)
		@movies << movie
	end

	def role_die
		rand(6)
	end

	def play
		puts "#{@name}'s PLAYLIST"
		@movies.each do |movie|
			case role_die
				when 1..2
					movie.thumbs_down
					puts "#{movie.titel} wurde abgewertet"
				when 3..4
					puts "#{movie.titel} wurde nix gemacht"
				else
					movie.thumbs_up
					puts "#{movie.titel} wurde aufgewertet"
			end
		end
	end

	def to_s
		@movies.size.to_s
	end
end
#Methoden
def movie_listing(movie, rank=5)
	"Movie: #{movie} ist ein guter Film, mit der Punktzahl : #{rank} am #{set_time}"
end

def set_time
	Time.now.strftime("%d.%m.%Y")
end

puts movie_listing(ARGV[0], ARGV[1])
#-------------------------------------------------------------------------#
#Klassen

class Movie
	
	attr_reader :title
	attr_writer :title
	attr_accessor :title
	def initialize(pname, prank=5)
		@name = pname
		@rank = prank


	end
	def normalized_rank
		@rank * 1000
	#Getter für einen veränderten rank 

	def titel=(titel)
		@title = title
	end	

	def list_movie
		"Movie heisst:#{@name} und hat einen rank von: #{@rank}"


	end	

	def thumbs_up(value)
		@rank = @rank + value


	end

end

obj = Movie.new("Superman")
puts obj.list_movie
obj.thumbs_up(7)
puts obj.list_movie


obj2 = Movie.new("Batman", 10)
puts obj2.list_movie

puts movie.titel
puts movie
#-----------------------------------------------------------------#
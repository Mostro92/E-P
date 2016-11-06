class Film
	def initialize(title,imbd=0)
		@title = title
		@imbd = imbd
	end
	# attr_reader :title
	# attr_writer :title
	attr_accessor :title
	def to_s
		"Der Film #{@title} hat einen Highscore von #{@imbd}."
	end
	def high
		@imbd = @imbd +100
	end
	def low
		@imbd = @imbd -60
	end
	def to_s
		"#{@title} hat ein Ranking von: #{@imbd}."
	end
end

film1 = Film.new("Hulk",1)
puts film1.to_s	
film1.high
puts film1.to_s

puts film1.title

film1.title = "Juhu"
puts film1

movie1 = Film.new("Olga",2)
movie2 = Film.new("Johannes",-3)
movie3 = Film.new("Johann",344)

movies = [movie1,movie2,movie3]
movies.each do |movie|
	movie.high
	puts movie
end
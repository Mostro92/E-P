def movie_listing(title, rank = "")
	"Movie: #{title.downcase.capitalize} hat #{weekday} das Ranking #{rank}"
end

def weekday
	Time.now.strftime("%A")
end

puts movie_listing("Ninja Turtles", 4)
puts movie_listing("SWAT", 3)

#-----------------

def movie_listing
	puts "Movie: Ninja Turtles"
end

movie_listing # gibt 'Movie: Ninja Turtles' aus

#-----------------

def movie_listing
	puts "Movie: Ninja Turtles"
	puts "Movie: Ninja Turtles 2"
end

movie_listing # gibt 'Movie: Ninja Turtles'
							# 		 'Movie: Ninja Turtles 2' aus

#-----------------

def movie_listing
	"Movie: Ninja Turtles"
	"Movie: Ninja Turtles 2"
end

puts movie_listing # gibt 'Movie: Ninja Turtles 2' aus

#-----------------

def movie_listing
	var1 = "Movie: Ninja Turtles"
	var2 = "Movie: Ninja Turtles 2"
	"#{var1}\n#{var2}"
end

puts movie_listing # gibt 'Movie: Ninja Turtles'
									 # 			'Movie: Ninja Turtles 2' aus
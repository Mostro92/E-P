require_relative 'class_playlist'
require_relative 'class_movie'


movie1 = Movie.new('Fringe - Grenzfälle des FBI',7)
puts movie1.status
movie2 = Movie.new('The Walking Dead',10)
puts movie2.status
movie3 = Movie.new('Black is the new Orange',8)
puts movie3.status
pl = Playlist.new("Horror")
pl.add_movie(movie1)
pl.add_movie(movie2)
pl.play

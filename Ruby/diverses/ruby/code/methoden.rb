# BEISPIEL FÜR VARIABLEN INNERHALB VON METHODEN

# def movie_listing
# 	puts "Movie: Ninja Turtles"
# end

# puts movie_listing


# def movie_listing2
# 	var = "Movie: Ninja Turtles"
# 	puts "var innerhalb Methode:#{var.object_id}"
# 	var2 = "Movie: bla blub"
# 	"\n#{var}\n#{var2}"
# end


# var = movie_listing2
# puts "var außerhalb: #{var.object_id}"
# puts "Rückgabewert #{var}"

def watch_tv(title)
	"Filmname: #{title.downcase.capitalize} hat #{weekday}"
end

def weekday
	Time.now.strftime("%A")
end

puts watch_tv("Fringe")
puts watch_tv("S.W.A.T.")
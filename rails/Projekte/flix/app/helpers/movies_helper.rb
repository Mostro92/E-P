module MoviesHelper
	def format_price(movie)
		if event.price < 50
			#<strong>Free</strong>".html_safe
			content_tag(:strong, 'Flop')
		else
			number_to_currency event.price, unit: "€", seperator: ",", delimiter: ".", format: "%n %u"
		end	
	end

end

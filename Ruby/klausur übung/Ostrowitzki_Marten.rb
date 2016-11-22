class Autor
	attr_reader :name
	attr_reader :geburtstag
	
	def initialize(name, geburtstag)
		@name = name
		@geburtstag = geburtstag
	end
end

class Bibliothek
	attr_accessor :buecher
	attr_reader :name

	def initialize(name)
		@name = name
		@buecher = []
		#@jahr = jahr
	end

	def add_book(buch)
		@buecher << buch
	end

	def output
		
		@buecher.each do |buch|
		puts "#{buch.autor.name},#{buch.titel},#{buch.gekauft_am}."
			
		end
	end

	def buch_aktion(jahr)
	#	if  jahr -2 > buch.gekauft_am || jahr -5 > buch.gekauft_am
	#		puts "1 Buch bei denen keine Aktion nötig ist:"
	#	elsif 
	#		puts "2 Bücher bei denen eine Kontrolle nötig ist"

	#	else
	#		puts "1 Buch das in die Restaurierung geht:"
			
			
		


	#	end
	end
		
	
	
	
end

class Buch
	attr_accessor :gekauft_am, :autor, :titel
	

	def initialize(autor, titel, gekauft)
		@autor = autor
		@titel = titel
		@gekauft_am = gekauft
	end

	
	
	
end

class Ausleiher
	attr_accessor :name, :datum, :straße
	def initialize(name, datum, straße)
		@name = name
		@datum = datum
		@straße = straße
	end	

	def show_books
		bucher ={'Niemand'=> "verfügbar", 'Immer wieder gerne'=> "nicht verfügbar"}
		puts "Diese Bücher sind verfügbar und nicht verfügbar"
		bucher.each do |titel, verfügbar|
		puts "titel:#{titel}---------#{verfügbar} "
		end

	end
	
	def leihen
		
	end
	
	def abgeben
		
	end

end

bibliothek = Bibliothek.new("Hamburg")

autoren ={'Maier'=> "20.03.1980", 'Schulze'=> "20.05.1980"}
autor = []
autoren.each do |name, geburtstag|
		autor << Autor.new(name, geburtstag)
		
	end
#autor_1 = Autor.new("Maier", "20.03.1980")

buch_1 = Buch.new(autor[0], "Niemand", 2005)
buch_2 = Buch.new(autor[0], "Jeder", 2010)
buch_3 = Buch.new(autor[0], "Immer wieder gerne", 2013)
buch_4 = Buch.new(autor[0], "Morgen ist auch noch ein Tag", 2011)

buecher = [buch_1, buch_2, buch_3, buch_4]

buecher.each { |buch|
bibliothek.add_book(buch)
  }

#bibliothek.add_book(buch_1)
#bibliothek.add_book(buch_2)
#bibliothek.add_book(buch_3)
#bibliothek.add_book(buch_4)

bibliothek.output

person1 = Ausleiher.new("Lukas", "08.11.2016", "Heidekamp 7")
person1.show_books

#1. Erstellen Sie eine Klasse Car mit den Eigenschaften: ps, typ, verbrauch
	#Stellen sie sicher dass die Eigenschaft typ beim ersten Buchstarben 
	#einen Großbuchstarben hat.
	#Stellen sie sicher das bei der eingabe der Zahl keine Ausnahme
	#geworfen wird.
	#Stellen sie sicher das die Instanzvariable ps nur dann gefüllt wird
	#wenn es sich um einen positiven wert größer als null handelt.
#2. Das Fahrzeug kann beschleunigen: Die Methode beschleunigen bekommmt
	#einen Parameter zeit, der die Sekundenzahl des Beschleunigungsvorganges
	#enthält.Ausgegeben wird die erreichte Geschwindigkeit in km/Stunde. Die 
	#Geschwindigkeit wird errechnet aus PS mal Sekunden geteilt durch 100.
	#Und ergibt die Einheit Meter/Sekunden.	
#2. Legen sie 3 Objekte von dieser Klasse an: Objekt1: ps:200 typ:Klaumich
	#Objekt2: ps:80 typ:Hauni Objekt3: ps:100 typ:
#3. Erstellen sie eine konstruktor , der für die Eigenschaft ps einen Wert
	#erwartet, für die Eigenschaft typ optional eine Initialisierung ermöglicht.
#3. Speichern sie die Objekte in einem arry.
#4. Lassen sie das arry durchlaufen, geben sie den typ aus.
#5. Erstellen sie eine Ausgabe:sortieren nach ps

class Car
	attr_accessor :verbrauch
	attr_reader :typ, :ps

	def initialize(ps, typ="")
		@ps = ps
		@typ = typ
		
	end

	def ps=(ps)
		@ps = ps if ps > 0
		
	end

	def typ=(typ)
		if !typ.is_a?(String)
			puts "war kein string"
			
		elsif typ.size < 3
			puts "String zu kurz"
		else
			@typ = typ.capitalize
		end
	end

	def beschleunigen(zeit)
		ergebnis =  @ps*zeit / 100
		puts "Die Geschwindigkeit beträgt nun: #{confert_to_kmh(ergebnis)} km pro Stunde."

	end	

	private
		def confert_to_kmh(var)
			var * 3.6
			
		end

end



car1 = Car.new(200, "Klaumich")
car2 = Car.new(80, "Hauni")
car3 = Car.new(100)

cars = [car1, car2, car3]

cars.each do |car|
	#puts car.typ.empty? ? "Kein Wert" : car.typ

if car.typ.empty?
			puts "Ist leer"
else
	puts car.typ

end

end





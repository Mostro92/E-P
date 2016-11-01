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
#5. Legen Sie drei weitere Objekte von der Klasse Car an. Die Daten stehen 
	#in einem hash,wobei die erste position den typ und die zweite position
	#die ps enthält: vals ={'BMW'=> 200, 'Trabbi' => 150, 'Honda' =>20}.
	#Lassen sie den Hash durchlaufen, erzeugen jeweils ein car objekt und legen 
	#dieses im array cars2 ab.
#6. Erstellen sie eine klasse 'Driver' mit der Eigenschaft Name die im 
	#Konstruktor gesetzt werden muss.Es gibt ein Array cars, das im 
	#Konstruktor initialisiert wird. Es gibt eine Methode add_cars mit der für
	#das Driver-Objekt ein Fahrzeug hinzugefügt werden kann. Es gibt eine 
	#Ausgabe show_cars die die Fahrzeuge mit der Typenbezeichnung auflistet.
	#Legen sie ein Objekt Theo an, ordnen sie von den Car-Arrays jeweils das
	#erste das Driver-Objekt zu. Lassen sie die Daten der zugeordneten 
	#Fahrzeuge ausgegeben.

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

class Driver
	attr_accessor :name

	def initialize(name)
		@name = name
		@cars = []
	end

	def add_cars(car)
		@cars << car
		
	end

	def show_cars
		@cars.each do |car|
			puts car.typ


		end
		
	end


end	



car1 = Car.new(200, "Klaumich")
car2 = Car.new(80, "Hauni")
car3 = Car.new(100)

vals ={'BMW'=> 200, 'Trabbi' => 150, 'Honda' =>20}
cars2 = []
vals.each do |typ, ps|
		cars2 << Car.new(ps,typ)
		
	end
#puts cars2.inspect

cars = [car1, car2, car3]
#cars.each do |car|
	#puts car.typ.empty? ? "Kein Wert" : car.typ
#if car.typ.empty?
			#puts "Ist leer"
#else
	#puts car.typ

#end

#end

theo = Driver.new("theo")
theo.add_cars(cars[0])
theo.add_cars(cars2[0])
theo.show_cars




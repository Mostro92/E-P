# Erstellen Sie eine Klasse Calculator mit einem Konstruktor, der zwei Zahlen entgegennimmt und in Instanzvariablen speichert. 
# Eine Methode add, und eine Methode subtract führt eine Addition und eine Substraktion durch und gibt das Ergebnis zurueck.
# Legen Sie ein Objekt an und wenden Sie die Methoden add und subtract an.

class Calculator
	attr_accessor :zahl1, :zahl2

	def initialize(zahl1, zahl2)
		@zahl1 = zahl1
		@zahl2 = zahl2
	end

	def add
		ergebnis = @zahl1 + @zahl2
		puts ergebnis
	end

	def subtract
		ergebnis = @zahl1 - @zahl2
		puts ergebnis
	end
end

ergebnis = Calculator.new(3, 4)
ergebnis.add
ergebnis.subtract
ergebnis.zahl1 = 10
puts ergebnis.zahl1
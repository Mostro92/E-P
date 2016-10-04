

class Calculator

	attr_accessor :zahl1, :zahl2

	def initialize(newzahl1, newzahl2)
		@zahl1 = newzahl1
		@zahl2 = newzahl2
	end

	def add
		@ergebnis = @zahl1 + @zahl2
		puts "Das Ergebnis lautet: #{@ergebnis}"
	end
	
	def sub
		@ergebnis = @zahl1 - @zahl2
		puts "Das Ergebnis lautet: #{@ergebnis}"
	end
end

calc=Calculator.new(50,10)
calc.add
calc.sub
calc.zahl1 = 10
calc.sub

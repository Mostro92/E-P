class Calculator

	def initialize (n1,n2)
		@n1 = n1
		@n2 = n2
	end
	def add
		@add = @n1 + @n2
		puts @add 
	end

	def sub
		@sub = @n1 - @n2
		puts @sub 
	end	
end

obj1 = Calculator.new(2,3)
puts obj1

obj1.add
obj1.sub
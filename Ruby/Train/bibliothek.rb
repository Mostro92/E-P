class Bibliothek
	attr_reader :buecher

	def initialize(name)
		@name = name
		@buecher = []
	end

	def add_buch(buch)
		@buecher << buch
	end
end
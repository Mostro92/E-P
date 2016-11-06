class Buch
	attr_reader :autor
	attr_reader :titel
	attr_accessor :gekauft_am

	def initialize(autor, titel, gekauft)
		@autor = autor
		@titel = titel
		@gekauft_am = gekauft
	end

	def autor=(autor)
		@autor << autor
	end
end
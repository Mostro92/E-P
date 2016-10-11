class Kunde

	attr_accessor :name, :gehalt
	attr_writer :adresse


		def initialize(name)
			@name = name
		end

		def adresse1
			"#{@name}, #{@adresse}."
		end
end


class Kredit

	attr_accessor :kredit

	def initialize(kunde)
		@kunde = kunde
		
	end

	def kunde1
		"#{@kunde.adresse1} Jahresgehalt: #{@Jahresgehalt}"
	end
end


kunde1 = Kunde.new("Theo Sommer")
kunde1.name = "theo sonnenschein".split.each.capitalize
puts kunde1.name
kunde1.gehalt = 2000
kunde1.adresse = "Hermelinweg 11, 22159 Hamburg"

puts kunde1.adresse1

kredit1 = Kredit.new(kunde1)
puts kredit1.kunde1
kredit1.kredit = 5000
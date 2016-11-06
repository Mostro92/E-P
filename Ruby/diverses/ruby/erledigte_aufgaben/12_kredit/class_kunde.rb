class Kunde

	attr_accessor :name
	attr_writer :adresse
	attr_accessor :gehalt


	def initialize (name)
		@name = name
	end

	def adresse
		puts "#{@name}, #{@adresse}"
	end

	def kundendaten
		"ich bin #{@name.split.first.capitalize} #{@name.split.last.capitalize}, aus #{@adresse}"
	end
	def to_s
		"ich bin #{@name.split.first.capitalize} #{@name.split.last.capitalize}, aus #{@adresse}und habe ein Gehalt von #{@gehalt}."
	end
end
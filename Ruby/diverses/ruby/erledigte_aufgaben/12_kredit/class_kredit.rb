class Kredit

attr_accessor :jahresgehalt
attr_accessor :kreditsumme

def initialize(kunde)
	@kunde = kunde
end

def kreditvergabe
	if @jahresgehalt > @kreditsumme * 6
		puts "Ihr kredit wird gewährt."
	else
		puts "Sorry, besseren Job suchen."
	end
end

def abzahlung
@monate = 10
@teilzahlung = @kreditsumme / @monate
puts "Bei einer Rückzahlung des Kredits von #{@kreditsumme}€ innerhalb von #{@monate} ist pro Monat eine Zahlung von #{@teilzahlung}€ notwendig"
end

def to_s
	puts "#{@kunde} und habe ein Jahresgehalt von #{@jahresgehalt}€."
end

end

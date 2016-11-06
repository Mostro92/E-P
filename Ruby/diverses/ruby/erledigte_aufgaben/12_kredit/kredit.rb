require_relative 'class_kunde'
require_relative 'class_kredit'

kunde1 = Kunde.new("Theo Sommer")
kunde1.name = "Theo Sonnenschein"
kunde1.gehalt = 2000
kunde1.adresse = "Hermelinweg 11, 22159 Hamburg"
kunde1

kunde1.adresse

kredit1 = Kredit.new(kunde1.kundendaten)
kredit1.kreditsumme =  5000
kredit1.jahresgehalt = 24000

kredit1.to_s
kredit1.kreditvergabe

kredit1.abzahlung
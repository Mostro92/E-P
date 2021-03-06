#1.  Klasse Kunde
#1a. Legen Sie eine Eigenschaft name und adresse in der Klasse Kunde an. Für die Eigenschaft name gibt es einen Lese- und Schreibzugriff, fuer die Eigenschaft adresse einen Schreibzugriff. 
#b. Die Eigenschaft name enthält den Vor- und Zunamen des Kunden. Diese Eigenschaft wird beim Anlegen des Objektes übergeben. Schreiben Sie den entsprechenden Konstruktor. 
#c. Erzeugen Sie ein Objekt mit dem Namen 'kunde1' und dem Initialwert: 'Theo Sommer' 
#d. Ändern Sie die Eigenschaft 'name' des Objektes in: 'Theo Sonnenschein' 
#e. Schreiben Sie den Befehl, der den Namen auf der Konsole ausgibt. 
#f. Fügen Sie der Klasse Kunde die Eigenschaft gehalt hinzu, die sowohl gelesen als auch geschrieben werden kann. Schreiben Sie den Befehl auf, der das Gehalt des Objektes als Konsolenbefehl auf 2000 setzt. 
#g. Die Eigenschaft adresse bekommt folgenden String uebergeben: Hermelinweg 11, 22159 Hamburg
#h. Schreiben Sie eine  Getter-Methode' für die Klasse Kunde, für die Eigenschaft adresse die folgende Ausgabe produziert: 'Theo Sonnenschein, Hermelinweg 11, 22159 Hamburg.'  und geben sie das auf der Konsole aus.
#i. Zusatz optional: Sichern Sie, dass im String Theo Sonnenschein sowohl Theo, als auch Sonnenschein jeweils mit einem Grossbuchstaben beginnen

#2. Klasse Kredit 
#a. Legen Sie eine Klasse Kredit an, mit der Eigenschaft kunde (ohne Setter und Getter) und einem Konstruktor, der die Eigenschaft kunde füllt. Erzeugen Sie ein Objekt kredit1, dem Sie das bereits existierende Objekt kunde1 übergeben.
#b. Legen Sie eine Getter-Methode für die Eigenschaft kunde an, die folgende Ausgabe erzeugt: 'Theo Sonnenschein, Hermelinweg 11, 22159 Hamburg. Jahresgehalt: 24000 Euro.' 
#c. Fügen Sie eine Eigenschaft kredit hinzu, auf die lesend und schreibend zugegriffen werden kann. Speichern Sie für das bestehende Objekt in der Eigenschaft kredit den Wert 5000. 

class Bank
	def initialize(bank)

		@bank = bank
		@kunden = []
		
	end
	
	def add_kunde(kunde)

		@kunden << kunde
		
	end

	def kreditwürdig
		puts  "Nachricht von der Bank: #{@bank}."
		puts "Herzlichen Glückwunsch sie alle sind Kreditwürdig"

		@kunden.each do |kunde|
			#puts kunde
			puts kunde.get_kredit
					end
		
	end
	
end

class Kunde

	attr_accessor :name, :gehalt
	attr_writer :adresse
	
	def initialize(name)

	@name = name
	
		
	end

	def get_kredit

		"#{@name.ljust(20,'.')}. #{@adresse.ljust(35,'.')} Jahresgehalt: #{@gehalt}."
		
	end

	#def to_s

	#	"#{@name}"
		
	#end
	
end



kunde1 = Kunde.new("Theo Sommer")
kunde2 = Kunde.new("Lorenzo Matterhorn")
kunde3 = Kunde.new("Marten Ostrowitzki")
kunde4 = Kunde.new("Andreas Lauter")
kunde1.name = "theo sonnenschein"
puts kunde1.name
kunde1.gehalt = 2000
kunde2.gehalt = 6000
kunde3.gehalt = 166000
kunde4.gehalt = 70000
puts kunde1.gehalt
kunde1.adresse = "Harbichtweg 19, 22159 Hamburg"
kunde2.adresse = "Holaweg 13, 22159 Hamburg"
kunde3.adresse = "Statikstieg 177, 22159 Hamburg"
kunde4.adresse = "Gutweg 17, 22159 Hamburg"
puts kunde1.get_kredit



bank = Bank.new("Sparkasse")
kunden = [kunde1, kunde2, kunde3, kunde4]
kunden.each { |kunde| 
	bank.add_kunde(kunde)

 }
bank.kreditwürdig
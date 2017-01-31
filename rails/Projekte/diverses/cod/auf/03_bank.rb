# Einrichten einer Kundenklasse.

# Eine Klasse customer soll eingerichtet werden.
# Beim Anlegen eines Customer-Objektes muss als notwendiger Parameter eine Kontonummer (Instanzvariable bank_account) eingegeben werden.
# Optional kann auch der Nachname des Kunden (lastname) eingegeben werden.

# Erstellen Sie SET und GET - Methoden für die Eigenschaften (Instanzvariablen) firstname, street, city. Z.B heisst die Set-Methode fuer street: set_street(pstreet)

# Eine Methode print_address soll beim Aufruf "puts obj.print_address' eine Ausgabe wie folgt erzeugen:
# Konto:................9999
# Name:.................Theo Lodgz
# Strasse:..............Hermelinweg 7
# Ort:..................22159 Hamburg

# Legen Sie das Objekt obj an, rufen Sie die entsprechenden Get-Methoden für die Dateneingabe auf, erzeugen Sie die Kontrollausgabe.

class Customer
	def initialize(bank_account, lastname)
		@bank_account = bank_account
		@lastname = lastname
	end

	def set_firstname(firstname)
		@firstname = firstname
	end

	def set_street(street)
	 	@street = street
	end

	def set_city(city)
	 	@city = city
	end

	def get_name(firstname)
		@firstname
	end

	def get_street(street)
	 	@street
	end

	def get_city(city)
	 	@city
	end

	def print_address
	 	"#{"Konto:".ljust(20, ".")}#{@bank_account}\n#{"Name:".ljust(20, ".")}#{get_name("")} #{@lastname}\n#{"Strasse:".ljust(20, ".")}#{get_street("")}\n#{"Ort:".ljust(20, ".")}#{get_city("")}"
	end
end

obj = Customer.new("9999", "Lodgz")
add = obj.set_firstname("Theo"), obj.set_street("Hermelinweg 7"), obj.set_city("22159 Hamburg")
puts obj.print_address
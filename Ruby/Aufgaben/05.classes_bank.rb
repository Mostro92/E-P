class Customer

		attr_accessor :lastname, :street, :city, :firstname


		def initialize(kontonummer,nachname,strasse,ort,vorname)
			@bank_account = kontonummer
			@lastname = nachname
			@street = strasse
			@city = ort
			@firstname = vorname
		end

		def print_adress
			"#{"Konto".ljust(20,'.')}#{@bank_account}\n" +
			"#{"Name".ljust(20,'.')}#{@firstname} #{@lastname}\n" +
			"#{"Strasse".ljust(20,'.')}#{@street}\n" +
			"#{"Ort".ljust(20,'.')}#{@city}\n" 
			
		end

end


obj = Customer.new("4564565645645","Musterman","Musterstraße","Hamburg","theo")
obj.lastname = "Alfred"
obj.street = "Teststraße 7"
obj.city = "Testhausen"
obj.firstname ="Muster"
puts obj.print_adress

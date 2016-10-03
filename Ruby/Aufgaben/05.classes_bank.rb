class Customer

		attr_accessor :lastname, :street, :city


		def initialize(kontonummer,nachname,strasse,ort)
			@bank_account = kontonummer
			@lastname = nachname
			@street = strasse
			@city = ort
		end

		def print_adress
			puts "#{"Konto".ljust(50,'.')}#{@bank_account}"
			puts "#{"Name".ljust(50,'.')}#{@lastname}"
			puts "--------------------------------------------------"
			puts "#{"Konto".ljust(20,'.')}#{@bank_account.rjust(30,'.')}"
			puts "#{"Name".ljust(20,'.')}#{@lastname.rjust(30,'.')}\n"
			puts "#{"Strasse".ljust(20,'.')}#{@street.rjust(30,'.')}\n"
			puts "#{"Ort".ljust(20,'.')}#{@city.rjust(30,'.')}\n"
			
		end

end


obj = Customer.new("4564565645645","Musterman","Musterstraße","Hamburg")
obj.lastname = "Alfred"
obj.street = "Teststraße 7"
obj.city = "Testhausen"

puts obj.print_adress

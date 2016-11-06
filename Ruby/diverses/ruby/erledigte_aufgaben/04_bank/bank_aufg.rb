# class Customer

# 	def initialize (bank_account,lastname="")
# 		@bank_account = bank_account
# 		@lastname = lastname
		
# 	end

# 	def set (firstname, street,city)
# 		@firstname = firstname
# 		@street = street
# 		@city = city
# 		# set_street(@street)
# 		# set_firstname(@firstname)
# 		# set_city(@city)
# 	end

# 	def get
# 		@firstname = firstname
# 		@street = street
# 		@city = city

# 	end

# 	def print_address
# 		"	Konto:..........#{@bank_account}\n 	Name:...........#{@firstname} #{@lastname}\n 	Strasse:........#{@street}\n 	Ort:............#{@city}"
# 	end

# end

# obj = Customer.new(8888,'Beh.')
# #puts obj.print_address

# obj.set('Ralf','Teststrasse 3', 'HH')
# puts obj.print_address

# puts obj.get

#----------------------------------------

# class Customer

# 	def initialize (bank_account,lastname="")
# 		@bank_account = bank_account
# 		@lastname = lastname
		
# 	end

# 	def set_firstname(firstname)
# 		@firstname = firstname
# 	end

# 	def set_street(street)
# 		@street = street
# 	end

# 	def set_city(city)
# 		@city = city
# 	end

# 	def get_firstname
# 		"#{"Name:".ljust(20,'.')}#{@firstname}"
# 	end

# 	def get_street
# 		"#{"Straße:".ljust(20,'.')}#{@street}"
# 	end

# 	def get_city
# 		"#{"Ort:".ljust(20,'.')}#{@city}"
# 	end

# 	def print_address
# 		puts "#{"Konto:".ljust(20,'.')}#{@bank_account}\n"
# 		puts "#{"Name:".ljust(20,'.')}#{@firstname} #{@lastname}\n"
# 		puts "#{"Straße:".ljust(20,'.')}#{@street}\n"
# 		puts "#{"Ort:".ljust(20,'.')}#{@city}\n"
# 	end

# end

# obj = Customer.new('424-213-233','Behrendt')

# obj.set_firstname('Ralf')
# obj.set_street('Dorfstraße 1a')
# obj.set_city('HH')
# obj.print_address
# puts obj.get_firstname
# puts obj.get_city
# puts obj.get_street

# obj.set_firstname('Olga')
# obj.set_street('Dorfstraße 123a')
# obj.set_city('BER')
# obj.print_address
# puts obj.get_firstname
# puts obj.get_city
# puts obj.get_street
#
#------------------------------------------------
class Customer

	def initialize (bank_account,lastname="")
		@bank_account = bank_account
		@lastname = lastname
	end
	attr_accessor :firstname
	#---------------------
	#attr_accessor :street  
	#<--so oder so:
	attr_reader :street
	attr_writer :street
	#---------------------
	attr_accessor :city

	def print_address
		puts "#{"Konto:".ljust(20,'.')}#{@bank_account}\n"
		puts "#{"Name:".ljust(20,'.')}#{@firstname} #{@lastname}\n"
		puts "#{"Straße:".ljust(20,'.')}#{@street}\n"
		puts "#{"Ort:".ljust(20,'.')}#{@city}\n"
 	end
end

obj = Customer.new('4344','Mueller')
obj.firstname = 'Hans'
obj.street = 'Dorfstrasse 3a'
obj.city = 'HH'

obj.print_address 
puts obj.street


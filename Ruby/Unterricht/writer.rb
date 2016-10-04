class Customer

	#Methode zum Setzen der Instanzvariable
	#def set_name(name)
	#@name = name

	#end
	#Kurzform der Eigenschaft name
	attr_writer :name
	#Langform der Eigenschaft name
	#def name=(name)
		#@name = name
	
	#end
	def ausgabe
		@name
	
	end


end

obj = Customer.new
#eine Variable kann gesetzt werden, indem ich eine beliebige Methode aufrufe.
#obj.set_name("theo")

obj.name = "Theo"
puts obj.ausgabe
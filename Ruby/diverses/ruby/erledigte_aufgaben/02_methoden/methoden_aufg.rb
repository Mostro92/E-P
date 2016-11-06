#a.

def say_hello(name)

puts	"Ich bin #{name}."
	
end

say_hello("Ludwig")

#-----------------------

#b

def say_hello(name)

puts	"Ich bin #{name}."
	
end

say_hello("Ludwig")
say_hello("Edgar")
say_hello("Johann")

#------------------------

#c

def say_hello(name)

"Ich bin #{name}."
	
end

puts say_hello("Ludwig")
puts say_hello("Edgar")
puts say_hello("Johann")

#------------------------

#d

def say_hello(name,health=100)

"Ich bin #{name} mit einem Wert von #{health}."
	
end

puts say_hello("Ludwig")
puts say_hello("Edgar")
puts say_hello("Johann")

#------------------------

#e

def say_hello(name,health=100)

"Ich bin #{name} mit einem Wert von #{health} um #{time}."
	
end
def time
	Time.now.strftime("%R")
end

puts say_hello("Ludwig")
puts say_hello("Edgar")
puts say_hello("Johann")

#ODER

def say_hello(name,health=100)

"Ich bin #{name} mit einem Wert von #{health} um #{Time.now.strftime("%R")}."
	
end

puts say_hello("Ludwig2")
puts say_hello("Edgar2")
puts say_hello("Johann2")
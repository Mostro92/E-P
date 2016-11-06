#a
#Langform

jahreszeiten1 = ['Sommer','Herbst','Winter']

#Kurzform

jahreszeiten2 = %w(Sommer Herbst Winter)

#b

puts jahreszeiten1.size

puts jahreszeiten2[1]

#c

jahreszeiten1.push('Fruehjahr')
jahreszeiten2 << 'Fruehjahr'
puts jahreszeiten1
puts jahreszeiten2

#d

jahreszeiten1.delete('Fruehjahr')
#oder: jahreszeiten1.pop(3)
jahreszeiten2.pop
puts jahreszeiten1
puts jahreszeiten2

#e

puts jahreszeiten1.join
puts jahreszeiten2.join(" und ")

#f

# varibale.join 					#gibt den Inhalt des Array hintereinander aus
# varibale.join("text") 	#gibt den Inhalt des Array hintereinander getrennt durch text aus

#g

#varibale.shuffle!				#gibt den Array Inhalt im 'geschüttelt' im selben Array aus
puts jahreszeiten1.shuffle!
#h

player = %w(Player1 Player2 Player3)

#i
puts player.size
zahl = player.size
counter = 0
zahl.times do 
	puts player[counter]
	counter = counter + 1
end

player << 'Player33'
player.shuffle!
puts player.size
zahl = player.size
counter = 0
zahl.times do 
	puts player[counter]
	counter = counter + 1
end


#a. Legen Sie eine neue Datei studio_game.rb an
#b. speichern Sie in der Variable name1 den Wert 'larry'
#c. speichern Sie in der Variable health den Wert 60
#d. geben Sie auf der Konsole: 'larry's health is 60' , unter Verwendung der Variablen aus (2 Versionen)
#e. verdreifachen Sie den Wert von larrys health
#f. reduzieren Sie die health durch eine Division durch 9. Geben Sie eine Variante mit float und eine mit integer aus
#g. erzeugen Sie folgende Ausgabe:
#	Players:
#		larry
#		curly
#		moe
#h. speichern sie die Namen der Spieler in Variablen und geben Sie diese erneut wie abgebildet aus

name1 = "larry"
name2 = "curly"
name3 = "moe"

health = 60

puts name1 + "'s health is " + health.to_s
puts "#{name1}'s health is #{health}"

puts "\n#{name1}'s health is #{health*3}"

puts "\n#{name1}'s health is #{health/9}"
puts "#{name1}'s health is #{health/9.to_f}"
puts "#{name1}'s health is #{health/9.0}"

puts "\nPlayers:\n\t#{name1}\n\tcurly\n\tmoe"
puts "Players:\n\t#{name1}\n\t#{name2}\n\t#{name3}"
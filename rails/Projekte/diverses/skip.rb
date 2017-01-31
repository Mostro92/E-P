Skip to content
This repository  
Pull requests
Issues
Gist
 @16max
 Watch 1
  Star 0
  Fork 0 g16simon/fit4h-enunpr
Branch: master  fit4h-enunpr/ruby/888.rb
@g16simong16simon 9 minutes ago neu
1 contributor
RawBlameHistory    188 lines (134 sloc)  4.76 KB
# 1. Legen Sie ein Array an mit den Zahlen 15 bis 20 an.

zahlen = [15,16,17,18,19,20]
alterzahl = (15..20).to_a

# a. geben Sie diese Zahlen in einem Block aus

zahlen.size.times { |i| puts zahlen[i] }

zahlen.each do |z|
	puts z.to_s
end

# b. geben Sie die Zahlen mit dem Index etwa so aus: Index: 0 - Wert: 15

zahlen.size.times { |i| puts "Index: #{i} - Wert: #{zahlen[i]}" }

zahlen.each_with_index do |z,i|
	puts "Index: #{i} - Wert: #{z}"
end

# c. erzeugen Sie in einem Block einen Hash, wobei Sie die Arraywerte als Index nutzen und als Wert eine Zufallszahl zwischen 100 und 200 speichern. 

## hash = {'index' => 'wert'}
hash2 = {}
zahlen.each do |var|
hash2[var] = rand(100..200)
end
puts hash2
puts "hier"

hash = {}
zahlen.size.times { |i| hash = Hash[zahlen[i], rand(100) + 100]; puts "#{hash}" }

# d. Geben Sie diesen Hash anschließen etwa so aus: Index: 15 - Wert: 121

hash2.each do |ind, wer|
	puts "Index: #{ind} - Wert: #{wer}"
end
puts "dada"

zahlen.size.times { |i| hash = { zahlen[i] => rand(100) + 100 }; hash.each { |index, wert| puts "Index: #{index} - Wert: #{wert}" } }

# e. Ergänzen Sie die Ausgabe. Wenn der Wert größer als 150 ist, dann sieht die Ausgabe aus:  Index: 15 - Wert: 151. WOW

zahlen.size.times { |i| hash = { zahlen[i] => rand(100) + 100 }; hash.each { |key, value| if value > 150; puts "Index: #{key} - Wert: #{value} WOW" else puts "Index: #{key} - Wert: #{value}" end } }

hash2.each do |ind, wer|
	if wer > 150;
	puts "Index: #{ind} - Wert: #{wer} Wow"
else
	puts "Index: #{ind} - Wert: #{wer}"
end
end
puts "dada"

# f. Durchlaufen Sie das Array und speichern Sie die Quadratzahlen in einem Array

quadarra = []
zahlen.each do |var|
quadarra << var*var
	end
puts quadarra


# g. ! Durchlaufen Sie das Array und speichern Sie die Quadratzahlen in einem Hash mit der Zahl als Schlüssel

hashaa = {}
quadarra = []
zahlen.each do |zahl|
	hashaa[zahl] = zahl*zahl
	end
puts hashaa

# Zusatz Zahlen im Array und im Hash:
# a. Legen Sie ein Array an mit 10 Primzahlen. Die Ausgabe des Arrays erzeugt:
# 	1 ist einstellig
# 	3 ist einstellig
# 	...
# 	11 ist zweistellig
#   ...
puts "zusatz"

prim = [1,2,3,5,7,11,13,17,19,23,31]

prim.size.times do |p|
if prim[p].to_s.size <2;
	puts "#{prim[p]} ist einstellig"
else puts "#{prim[p]} ist zweistellig"
end
end

# b. Legen Sie zur Übung einen Hash personen an, 
#mit den keys vorname, nachname, stadt und den Werten 
#Theo, Sommer, Lodz. Machen Sie eine Ausgabe, 
#die 'vorname: Theo + neue Zeile' ausgibt

personen = {vorname: "Theo", nachname: "Sommer", stadt: "Lodz"}

personen.each do |i, w|
puts "#{i}: #{w}"
end

# c. Fortsetzung Aufgabe a: 
# Speichern Sie beim Durchlaufen des Arrays die Werte in einem Hash 
#mit der Bezeichnung prims, sodass die jeweilige Primzahl den 
#Schlüssel bildet und der Wert den Text 'ist einstellig', 'ist zweistellig'

prim2 = {}
prim.size.times do |var|
if prim[var].to_s.size <2;
prim2[prim[var]] = "einstellig"
else
prim2[prim[var]] = "zweistellig"
end
end
puts prim2

# d. Sortieren Sie den Hash, sodass die Ausgabe folgendermaßen möglich wird:
# Einstellig: 1,3,5 ..
# Zweistellig: 11, 13, ..



puts "Einstellig: #{prim2.select {|k,v| v == "einstellig"}.keys.join(",")}"
puts "Zweistellig: #{prim2.select {|k,v| v == "zweistellig"}.keys.join(", ")}"




# e. Fortsetzung Aufgabe b: 
# Speichern Sie den Hash in dem Array adressen und legen Sie zwei weitere 
#Hashes personen mit den gleichen Keys und anderen Werten an. Durchlaufen 
#Sie das Array, sodass folgende Ausgabe erfolgt.
# 1.Person:
# Name: Theo
# Vorname: Sommer
# Stadt: Lodz
# 2. Person:
# ......

# 2. Worte
# a. Bilde ein Array mit den Worten: Pflaume, Bauschaum, Auster

worte = ["Pflaume", "Bauschaum", "Auster"]

# b. Alle Element, die den String aus enthalten sollen ausgegeben werden.
begriff = "aus"
worte.size.times do |i|
if worte[i].include?("aus"); puts worte[i]
end
end

# c. erzeugen eine Ausgabe nach der Länge der Worte von klein nach groß

puts worte.sort_by{|klaus| klaus.length}

# d. Ein Hash wird ausgegeben, das Wort als Index, die Anzahl der Buchstaben als Wert

## hash = {'index' => 'wert'}

neuh = {}
worte.size.times do |i|
	puts neuh = { worte[i] => worte[i].length }
end



# 3. Lottogenerator:
# a. Schreiben Sie einen kleinen Lottozahlengenerator. Es sollen 7 Zahlen aus 49 Möglichkeiten in einem Array ausgegeben werden.

puts lotto=(1..49).to_a.sample(7)

# b. Peter, Paul und Mary bilden einen Hash, etwa derart: lotto = { "Peter" => [ 2,22,33,11,23,32,26 ], ...}

spieler = ["Peter","Paul","Mary"]
totto = {}
spieler.size.times do |i|
	puts totto = { spieler[i] => lotto=(1..49).to_a.sample(7) }
end


# 4. Vergleich:
# str_1 = "Programmieren, Federball, Whisky"
# str_2 = "Fussball, Bier, Programmieren"
# Die Ausgabe lautet:
# ergebnis = { :diff => ["Federball", "Whisky", "Fussball", "Bier"], :match => ["Programmieren"]}
Status API Training Shop Blog About Pricing
© 2015 GitHub, Inc. Terms Privacy Security Contact Help
# 1. Legen Sie ein Array an mit den Zahlen 15 bis 20 an.
puts "1----"
numbers = (15..20).to_a
puts "\n"
# a. geben Sie diese Zahlen in einem Block aus
puts "a----"
numbers.size.times { |i| puts numbers[i] }
puts "------ODER------"
numbers.each { |i| puts i.to_s }
puts "\n"
# b. geben Sie die Zahlen mit dem Index etwa so aus: Index: 0 - Wert: 15
puts "b----"
numbers.size.times { |i| puts "Index: #{i} - Wert: #{numbers[i]}" }
puts "------ODER------"
numbers.each_with_index do |z, i|
	puts "Index: #{i} - Wert: #{z}"
end
puts "\n"
# c. erzeugen Sie in einem Block einen Hash, wobei Sie die Arraywerte als Index nutzen und als Wert eine Zufallszahl zwischen 100 und 200 speichern. 
puts "c----"
# numbers.size.times { |i| hash = Hash[numbers[i], rand(100) + 100]; puts "#{hash}" }
# puts "------ODER------"
hash = {}
numbers.each do |val|
	hash[val] = rand(100..200)
end
puts hash
puts "\n"
# d. Geben Sie diesen Hash anschließen etwa so aus: Index: 15 - Wert: 121
puts "d----"
hash.each { |key, value| puts "Index: #{key} - Wert: #{value}" }
puts "\n"
# e. Ergänzen Sie die Ausgabe. Wenn der Wert größer als 150 ist, dann sieht die Ausgabe aus:  Index: 15 - Wert: 151. WOW
puts "e----"
hash.each do |key, value|
	if value > 150
		puts "Index: #{key} - Wert: #{value} WOW"
	else
		puts "Index: #{key} - Wert: #{value}"
	end
end 
puts "\n"
# f. Durchlaufen Sie das Array und speichern Sie die Quadratzahlen in einem Array
puts "f----"
quadrat = []
numbers.size.times { |i| hash = { numbers[i] => rand(100) + 100 }; hash.each { |key, value| if value > 150; puts "Index: #{key} - Wert: #{value} WOW" else puts "Index: #{key} - Wert: #{value}" end; quadrat << value * value } }
puts "#{quadrat}\n------ODER------"
quadrat = []
numbers.size.times { |i| quadrat << numbers[i] * numbers[i] }
puts "#{quadrat}"
puts "------ODER------"
quadrat = []
numbers.each do |val|
	quadrat << val * val
end
puts quadrat
puts "\n"
# g. ! Durchlaufen Sie das Array und speichern Sie die Quadratzahlen in einem Hash mit der Zahl als Schlüssel
puts "g----"
quadrat.size.times { |i| hash2 = { quadrat[i] => rand(100) + 100 }; puts hash2 }
puts "------ODER------"
quadrat_hash = {}
quadrat.each do |z|
	quadrat_hash[z] = z * z
end
puts quadrat_hash
puts "\n"
puts "Zusatz----"
# Zusatz Zahlen im Array und im Hash:
# a. Legen Sie ein Array an mit 10 Primzahlen. Die Ausgabe des Arrays erzeugt:
# 	1 ist einstellig
# 	3 ist einstellig
# 	...
# 	11 ist zweistellig
#   ...
puts "a----"
require "prime"
primzahlen = Prime.first 10
primzahlen.size.times { |i| if primzahlen[i].to_s.size < 2; puts "#{primzahlen[i]} ist einstellig" else puts "#{primzahlen[i]} ist zweistellig" end }
puts "------ODER------"
primzahlen = [1, 2, 3, 5, 7, 11, 13, 17, 19, 23]
primzahlen.each do |p|
	if p.to_s.length < 2
		puts "#{p} ist einstellig"
	elsif p.to_s.length < 3 && p.to_s.length > 1
		puts "#{p} ist zweistellig"
	else
	end
end
puts "\n"
# b. Legen Sie zur Übung einen Hash personen an, mit den keys vorname, nachname, stadt und den Werten Theo, Sommer, Lodz. Machen Sie eine Ausgabe, die 'vorname: Theo + neue Zeile' ausgibt
puts "b----"
personen = { "Vorname" => "Theo", "Nachname" => "Sommer", "Stadt" => "Lodz" }
personen.each { |key, value| puts "#{key}: #{value}" }
puts "------ODER------"
person = { vorname: "Theo", nachname: "Sommer", stadt: "Lodz" }
person.each do |key, val|
	puts "#{key.capitalize}: #{val}"
end
puts "\n"
# c. Fortsetzung Aufgabe a: 
# Speichern Sie beim Durchlaufen des Arrays die Werte in einem Hash mit der Bezeichnung prims, sodass die jeweilige Primzahl den Schlüssel bildet und der Wert den Text 'ist einstellig', 'ist zweistellig'
puts "c----"
require "prime"
primzahlen = Prime.first 10
prims = {}
primzahlen.size.times { |i| if primzahlen[i].to_s.size < 2; prims = { primzahlen[i] => "ist einstellig" } else prims = { primzahlen[i] => "ist zweistellig" } end; puts prims }
puts "------ODER------"
prims = {}
primzahlen.each do |p|
	prims[p] = p.to_s.length < 2 ? " ist einstellig" : " ist zweistellig"
end
puts prims
puts "\n"
# d. Sortieren Sie den Hash, sodass die Ausgabe folgendermaßen möglich wird:
# Einstellig: 1,3,5 ..
# Zweistellig: 11, 13, ..
puts "d----"
require "prime"
primzahlen = Prime.first 10
prims = {}
ein = ""
zwei = ""
eins = "Einstellig"
zweis = "Zweistellig"
# primzahlen.size.times { |i| if primzahlen[i].to_s.size < 2; prims = { primzahlen[i] => eins } else prims = { primzahlen[i] => zweis } end; prims.each { |key, value|
# 	if value == eins;  if ein == ""; ein += "#{key}" else ein += ", #{key}" end; eins = value else if zwei == ""; zwei += "#{key}" else zwei += ", #{key}" end; zweis = value end } }
primzahlen.size.times do |i|
	if primzahlen[i].to_s.size < 2
		prims = { primzahlen[i] => eins }
	else
		prims = { primzahlen[i] => zweis }
	end
	prims.each do |key, value|
		if value == eins
			if ein == ""
				ein += "#{key}"
			else
				ein += ", #{key}"
			end
		else
			if zwei == ""
				zwei += "#{key}"
			else
				zwei += ", #{key}"
			end
		end
	end
end
puts "#{eins}: #{ein}"
puts "#{zweis}: #{zwei}"
puts "\n---ODER---"
prim2 = {}
primzahlen.size.times do |var|
	if primzahlen[var].to_s.size <2;
		prim2[primzahlen[var]] = "einstellig"
	else
		prim2[primzahlen[var]] = "zweistellig"
	end
end
puts "Einstellig: #{prim2.select {|k,v| v == "einstellig"}.keys.join(",")}"
puts "Zweistellig: #{prim2.select {|k,v| v == "zweistellig"}.keys.join(", ")}"
# e. Fortsetzung Aufgabe b: 
# Speichern Sie den Hash in dem Array adressen und legen Sie zwei weitere Hashes personen mit den gleichen Keys und anderen Werten an. Durchlaufen Sie das Array, sodass folgende Ausgabe erfolgt.
# 1.Person:
# Name: Theo
# Vorname: Sommer
# Stadt: Lodz
# 2. Person:
# ......
puts "e----"
adressen = []
personen = { "Vorname" => "Theo", "Nachname" => "Sommer", "Stadt" => "Lodz" }
adressen << personen
personen = { "Vorname" => "Tino", "Nachname" => "Juenger", "Stadt" => "Frankfurt" }
adressen << personen
personen = { "Vorname" => "David", "Nachname" => "Koshors", "Stadt" => "Hamburg" }
adressen << personen
adressen.size.times { |i| puts "#{i+1}. Person:\n"; adressen[i].each { |key, value| puts "#{key}: #{value}" } }
puts "------ODER------"
person = { vorname: "Theo", nachname: "Sommer", stadt: "Lodz" }
adressen = [person]
person = { vorname: "Peter", nachname: "Pan", stadt: "New York" }
adressen << person
person = { vorname: "Ludmilla", nachname: "Szenurji", stadt: "Peking" }
adressen << person
i = 1
adressen.each do |var|
	puts "#{i}. Person:\n"
	var.each do |key, val|
		puts "#{key.capitalize}: #{val}"
	end
	i += 1
end
puts "\n"
# 2. Worte
# a. Bilde ein Array mit den Worten: Pflaume, Bauschaum, Auster
puts "2a----"
puts worte = %w(Pflaume Bauschaum Auster)
puts "\n"
# b. Alle Element, die den String aus enthalten sollen ausgegeben werden.
puts "b----"
suche = "aus"
worte.size.times do |i|
	puts worte[i] if worte[i].include?(suche) || worte[i].include?(suche.capitalize)
end
puts "\n----ODER----"
liste = %w(Pflaume Bauschaum Auster)
var = liste.select do |a|
	a.include?("aus")
end
puts var
puts "\n----ODER----"
liste.each do |a|
	if a.downcase["aus"] == "aus"
		puts a
	end
end
puts "\n"
# c. erzeugen eine Ausgabe nach der Länge der Worte von klein nach groß
puts "c----"
puts worte.sort_by(&:length)
puts "\n----ODER----"
sortiert = liste.sort_by do |a|
	a.length
end
puts sortiert
puts "\n"
# d. Ein Hash wird ausgegeben, das Wort als Index, die Anzahl der Buchstaben als Wert
puts "d----"
worte.size.times do |i|
	puts wh = { worte[i] => worte[i].length }
end
puts "----ODER----"
hash = {}
worte.each do |l|
	hash[l] = l.length
end
puts hash
puts "\n"
# 3. Lottogenerator:
# a. Schreiben Sie einen kleinen Lottozahlengenerator. Es sollen 7 Zahlen aus 49 Möglichkeiten in einem Array ausgegeben werden.
puts "3a----"
lotto = []
7.times do
	lotto << rand(49)
end
puts lotto
puts "----ODER----"
puts lott = (1..49).to_a.sample(7).sort
puts "\n"
# b. Peter, Paul und Mary bilden einen Hash, etwa derart: lotto = { "Peter" => [ 2,22,33,11,23,32,26 ], ...}
puts "b----"
namen = ["Peter", "Paul", "Mary"]
namen.size.times do |i|
	lotto = []
	7.times do
		lotto << rand(49)
	end
	lh = { namen[i] => lotto }
	puts lh
end
puts "\n"
puts "----ODER----"
lotto = {}
%w(Peter Paul Mary).each do |vorname|
	lotto[vorname] = (1..49).to_a.sample(7).sort
end
puts lotto
puts "\n"
# 4. Vergleich:
# str_1 = "Programmieren, Federball, Whisky"
# str_2 = "Fussball, Bier, Programmieren"
# Die Ausgabe lautet:
# ergebnis = { :diff => ["Federball", "Whisky", "Fussball", "Bier"], :match => ["Programmieren"]}
puts "4----"
str_1 = "Programmieren, Federball, Whisky, Bier"
str_2 = "Fussball, Bier, Programmieren"
str1 = str_1.scan(/\w+/)
str2 = str_2.scan(/\w+/)
str1.size.times do |i|
	if (str2.include? str1[i]) == true
		diff = (str1 - str2) + (str2 - str1)
		# puts "ergebnis = { :diff #{diff}, :match [\"#{str1[i]}\"] }"
		ergebnis = { :diff => diff, :match => str1[i] }
		puts "ergebnis = #{ergebnis}"
	end
end
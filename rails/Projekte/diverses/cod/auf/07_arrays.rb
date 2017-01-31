# a. legen Sie zur uebung auf der irb ein Array jahreszeiten mit den Elementen: Sommer, Herbst, Winter an; sowohl in der Langform, als auch der Kurzform
variable = ['Sommer', 'Herbst', 'Winter']
variable = %w(Sommer Herbst Winter)
# b. lassen Sie ausgeben wieviele Elemente das Array enthaelt, welche Jahreszeit die zweite im Array ist
variable.size
variable[1]
# c. fuegen Sie das Element fruehjahr hinzu
variable << 'Frühling'
# Einfügen an Position eins des Arrays
variable.unshift('Frühling')# Einfügen an Position vier des Arrays
variable.insert(3, 'Frühling') 
# d. entfernen Sie das Element wieder aus dem Array
variable.pop
# e. ermitteln Sie mit Hilfe von ri, wie join Ihnen bei einer folgendermassen formatierten Ausgabe behilflich sein kann: Sommer und Herbst und Winter
ri Array.join
# f. notieren Sie den Befehl
variable.join(" und ")
# g. ermitteln Sie den Befehl mit dem Sie die Positionen der Elemente des Arrays nach einem Zufallsprinzip anordnen koennen
variable.shuffle!
# h. packen Sie Ihre drei Player aus dem Projekt in ein Array
players = %w(Larry Curly Moe)
# i. Geben Sie Player mit einer Iteration über das Array aus. Beginnen Sie mit einer Zeile, in der sie die Anzahl der Mitspieler notieren
i = 0
while i < players.size do
	puts players[i]
	i += 1
end
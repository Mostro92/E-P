str = "Die Woche besteht aus:\n\tMontag\n\tDienstag."
puts str

zahl = 10
puts zahl
#puts konvertiert eine Zahl in einen String, besser ist aber eine explizierte Konvertierung (puts zahl.to_s)

#Zusammengesetze Strings
puts str + ", der " + zahl.to_s + "."

puts "#{str} der #{zahl}. im Monat"

puts "#{str}, der #{Time.new}."

3.times do |variable|
	puts str
end

3.times { puts str; puts "Freitag" }
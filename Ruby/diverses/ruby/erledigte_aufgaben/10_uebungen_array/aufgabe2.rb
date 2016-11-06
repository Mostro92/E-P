require 'prime'

my_array = Prime.first 10

my_array.each do |t|
	if t < 10
		puts "#{t} ist einstellig"
	else
		puts "#{t} ist zweistellig"
	end
end

#oder


person = { vorname: "Theo", nachname:"Sommer",stadt:"Lodz"}
person.each do |key,val|
	puts "#{key.capitalize}: #{val}\n"
end

my_hash = Hash.new
my_array.each do |t|
	if t < 10
		my_hash[t] = "ist einstellig"
	else
		my_hash[t] = "ist zweistellig"
	end
end
puts my_hash

count_e = []
count_z = []
my_hash.each do |t,k|
	if k == "ist einstellig"
		count_e << t
	else
		count_z << t
	end
end
puts "Einstellig:#{count_e.join(",")}\nZweistellig:#{count_z.join(",")}"
my_array = (15..20).to_a

my_array.each do |i|
	puts i.to_s
end

my_array.each_with_index do |i,t|
	puts "Index: #{t} - Wert #{i}"
end

my_hash = Hash.new
my_array.each do |i|
	my_hash[i] = rand(100..200)
end
puts "#{my_hash}"

my_hash.each do |i,t|
	puts "Index: #{i} - Wert #{t}"
end

my_hash.each do |i,t|
	if t > 150
		puts "WoW: Index: #{i} - Wert #{t}"
	else
		puts "Index: #{i} - Wert #{t}"
	end
end

my_array_v2 = Array.new
my_array.each do |q|
	my_array_v2 << q * q
end
puts my_array_v2

my_hash_v2 = Hash.new
my_array.each do |q|
	my_hash_v2[q] = q * q
end
puts "#{my_hash_v2}"
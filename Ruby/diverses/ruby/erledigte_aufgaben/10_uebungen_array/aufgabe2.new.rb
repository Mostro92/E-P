my_array = %w(Pflaume Bauschaum Auster)

my_array_aus = my_array.select do |a|
	a.include?("aus") || a.include?("Aus")
end
puts my_array_aus

my_array_length = my_array.sort_by do |b|
	b.length
end
puts my_array_length

my_hash = Hash.new
my_array.each do |c|
	my_hash[c] = c.size
end
puts my_hash
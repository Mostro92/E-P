my_array = %w(Pflaume Auster Bauschaum)

my_array_aus = my_array.select do |a|
	a.include?("aus") || a.include?("Aus")
	end
puts my_array_aus

my_array_length = my_array.sort_by do |b|
	b.size
end
puts my_array_length

my_hash = Hash.new
my_array.each do |i|
	my_hash[i] = i.size
end

puts my_hash
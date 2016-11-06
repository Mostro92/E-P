#1
#---------------
# zahlen = (15..20).to_a
# zahlen_v2 = [15, 16, 17, 18, 19, 20]
# #a
# #------------------------------------------------------------------------------------
# #puts zahlen.join
# zahlen_v2.size.times { |i| puts zahlen[i] }
# 
# zahlen.each do |z|
#		puts z.to_s
#	end
#	zahlen.each {|z|puts z.to_s}
#
# #b 
# #------------------------------------------------------------------------------------
# counter = 0
# zahlen.size.times do 
# 	puts "Index: #{counter} - Wert: #{zahlen[counter]}"
# 	counter = counter + 1
# end

# #oder
# zahlen_v2.size.times { |i| puts "Index: #{i} - Wert: #{zahlen_v2[i]}" }

# #oder
# zahlen.each_with_index do |z,i|
# 	puts "Index: #{i} -  Wert: #{z}"
# end

#c 
#------------------------------------------------------------------------------------
# a = {}
# zahlen_v3 = [15, 16, 17, 18, 19, 20]
# zahlen_v3.size.times { |q| a = Hash[zahlen_v3[q], rand(100)+100]; puts "#{a}"}

# #oder

# zahlen = (15..20).to_a
# b = {}
# counter = 0
# zahlen.size.times do 
# 	b = Hash[zahlen[counter], rand(100)+100]
# 	puts "#{b}"
# 	counter = counter + 1
# end

# #oder
	my_array = (15..20).to_a
	my_hash = Hash.new
	my_array.each do |variable|
		my_hash[variable] = rand(100..200)
	end
	puts my_hash

# #d
# #-----------------------------------------------------------------------------------
# 
# zahlen = (15..20).to_a
# zahlen.size.times { |i| b = { zahlen[i] => rand(100) + 100 }; b.each { |key, value| puts "Index: #{key} - Wert: #{value}" } }

# # #oder

# zahlen_v4 = (15..20).to_a
# counter = 0
# zahlen_v4.size.times do 
# 	b = Hash[zahlen_v4[counter], rand(100)+100]
# 	b.each { |key,value| puts "Index: #{key} - Wert: #{value}"}
# 	counter = counter + 1
# end

# # oder

my_hash.each do |mykey, myval|
	puts "Index: #{mykey} - Wert: #{myval}"
end
# #e
# #-----------------------------------------------------------------------------------

# zahlen.size.times { |i| c = { zahlen[i] => rand(100) + 100} ; c.each { |key, value| if value > 150; puts "Index: #{key} - Wert: #{value} WOW" else puts "Index: #{key} - Wert: #{value}" end } }

# #oder

# zahlen_v5 = (15..20).to_a
# c = {}
# counter = 0
# zahlen_v5.size.times do 
# 	c = Hash[zahlen_v5[counter], rand(100)+100]
# 	c.each { |key,value| if value > 150; puts "Index: #{key} - Wert: #{value} WOW" else puts "Index: #{key} - Wert: #{value}" end} 
# 	counter = counter + 1	
# end

# #oder

my_hash.each do |mykey2, myval2|
	if myval2 > 150
		puts "WOW: Index: #{mykey2} - Wert: #{myval2}"
	else
	 puts "Index: #{mykey2} - Wert: #{myval2}"
	end	
end
#f
#-----------------------------------------------------------------------------------

# zahlen_v6 = (15..20).to_a
# f = {}
# square = Array.new
# counter = 0
# zahlen_v6.size.times do 
# 	f = Hash[zahlen_v6[counter], rand(100)+100]
# 	f.each { |key,value| puts "Index: #{key} - Wert: #{value}"; square << value * value; puts "#{square[counter]}" }
# 	counter = counter + 1
# end

# #oder

sec_array = Array.new
my_array.each do |val|
	sec_array << val * val
end
puts sec_array
# #g
#-----------------------------------------------------------------------------------

# zahlen_v7 = (15..20).to_a
# f = {}
# square_v2 = Array.new
# counter = 0
# zahlen_v7.size.times do 
# 	g = Hash[zahlen_v7[counter], rand(100)+100]
# 	g.each { |key,value| puts "Index: #{key} - Wert: #{value}"; square_v2 << value * value; puts "#{square_v2[counter]}" }
# 	counter = counter + 1
# end

# square_v3 = Array.new
# counter = 0
# square_v2.size.times do 
# 	square_v3 = Hash[square_v2[counter], rand(100)+100]
# 	square_v3.each { |key,value| puts "Index: #{key} - Wert: #{value}";  puts square_v3 }
# 	counter = counter + 1
# end

# #oder

sec_hash = Hash.new
my_array.each do |z|
	sec_hash[z] = z * z
end
puts sec_hash






#---------------------------------------------------------------------------------
#Zusatz Zahlen im Array und im Hash:
#a

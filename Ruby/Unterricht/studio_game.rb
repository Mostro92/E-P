name1 = "larry"
health = 60

#puts "#{name1}\'s health is #{health }"

#puts "#{name1}\'s health is #{health * 3}"

#puts "#{name1}\'s health is #{health.to_f /9}"
#puts "#{name1}\'s health is #{health.to_i /9}"


#puts "Players:\n larry\n curly\n moe\n"

name2 = "curly"
name3 = "moe"

#puts "Players:\n\t #{name1}\n\t #{name2}\n\t #{name3}"

#03.string.txt

puts "#{name1} has a health of #{health}"

puts "#{name2.upcase} has a health of #{health + 65}"

2.times do 
	
puts "#{name3.upcase} has a health of #{health + 40}".center(50, '*')
end

2.times do

#puts "Shamp".ljust(25, '123') "#{health + 30} health"

end

puts "Players:\n\t #{name1}\n\t #{name2}\n\t #{name3}"

Time.now.strftime("%A %d / %m / %G at %R%P")
puts "The Game started on #{time} at "


lotto = []
7.times do
	i = rand(1..49)
	while lotto.include?(i)
		i = rand(1..49)
	end
	lotto << i
end

puts lotto2 = (1..49).to_a.sample(7).sort

puts lotto.sort

lotto_hash = Hash.new
%w(Peter Paul Mary).each do |vname|
	lotto_hash[vname] = (1..49).to_a.sample(7).sort
end

puts lotto_hash

class Suche
	attr_accessor :suche
end

suchen = Suche.new

worte = %w(Pflaume Bauschaum Auster)

suche = STDIN.gets

worte.size.times do |i|
	puts worte[i] if worte[i].include?(suche) || worte[i].include?(suche.capitalize)
end
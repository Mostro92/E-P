# a. erstellen Sie eine Klasse Game mit einem Konstruktor, der eine Instanzvariable title anlegt und fuellt und ein leeres Array mit dem Name Player enthaelt.
# b. die Klasse Game hat eine Methode add_player der ein SPieler hinzugefuegt wird
# c. eine Methode play erzeugt folgenden Ausdruck:
# 	There are 3 players in Knuckleheads: 
# 	I'm Moe with a health of 100 and a score of 103.
# 	I'm Larry with a health of 60 and a score of 65.
# 	I'm Curly with a health of 125 and a score of 130.
# 	Moe got blammed!
# 	Moe got w00ted!
# 	Moe got w00ted!
# 	I'm Moe with a health of 120 and a score of 123.
# 	Larry got blammed!
# 	Larry got w00ted!
# 	Larry got w00ted!
# 	I'm Larry with a health of 80 and a score of 85.
# 	Curly got blammed!
# 	Curly got w00ted!
# 	Curly got w00ted!
# 	I'm Curly with a health of 145 and a score of 150.

class Game
	def initialize(titel)
		@titel = titel
		@player = []
	end

	def add_player(player)
		@player << player
	end

	def play
		puts "These are #{@player.size} players in #{@titel}:"
		@player.each do |player|
			puts player
		end
	end
end

class Player
	attr_reader :health
	attr_accessor :name

	def initialize(pname, phealth=100)
		@name = pname
		@health = phealth
	end

	def to_s
		"Ich bin #{@name} mit einem Wert von #{@health} und einem Score von #{score}"
	end

	def blam
		@health -=10
		puts "#{@name} wurde geblamt!!! Aktueller Stand: #{@health}"
	end
	def w00t
		@health += 10
		puts "#{@name} wurde gew00tet!!!! Aktueller Stand: #{@health}"
	end

	def score
		@health + @name.length
	end
end
player1 = Player.new('Moe')
player2 = Player.new('Larry', 60)
player3 = Player.new('Curly', 125)

players = [player1, player2, player3]

initgame = Game.new("Knuckleheads")
players.size.times do |i|
	initgame.add_player(players[i])
end

initgame.play
players.each do |player|
	player.blam
	player.w00t
	player.w00t
	puts player
end
class Movie < ActiveRecord::Base
	
validates :title, :release, presence: true
validates :descrption, :length => { minimum: 25 }
validates :total_gross, numericality: {only_integer: true, greater_than: 0}

	def flop?
		self.total_gross.blank? || self.total_gross < 50000000
	end
def self.past
	where("release <= ?", Time.now).order("release")
end

end

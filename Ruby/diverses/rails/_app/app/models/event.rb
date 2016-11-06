class Event < ActiveRecord::Base
	has_many	:registrations, dependent: :destroy
	validates :name, presence: true
	validates :description, length: { minimum: 25 }
	validates :capacity, numericality: { only_integer: true, less_than_or_equal_to: 100, greater_than_or_equal_to: 15}
	validates :image_file, allow_blank: true, format: { with: /\w+\.(gif|jpg|png)\z/i, message: "Dateiformat muss jpg, gif oder png sein!" }
	
	def free?
		self.price.blank? || self.price.zero?
	end

	def self.upcoming #Klassenmethode
		where("start_at <= ?", Time.now).order("start_at")
	end

	def self.past
		where("start_at >= ?", Time.now).order("start_at")
	end
end

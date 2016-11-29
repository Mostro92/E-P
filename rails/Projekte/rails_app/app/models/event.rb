class Event < ApplicationRecord
	def free?
		event.price.blank? || event.price.zero?
	end



end


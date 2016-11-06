module ApplicationHelper
	def format_price(event)
		if event.free?
			#"<strong>FREE</strong>".html_safe
			content_tag(:strong, "FREE")
			else
				number_to_currency(event.price, unit: "€")
		end
	end
	def image_for(event)
		if event.image_file.blank?
			image_tag 'CrashTestDummy.jpg', size: "100x100"
		else
			image_tag event.image_file
		end
	end
end

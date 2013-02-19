module ApplicationHelper
	def render_stars(rating)
		StarsRenderer.new(rating,self).render_stars
	end	
end

module BarsHelper

	def toggle_like_button(bar, user)
		if user.flagged?(bar, :like)
			#We already like it
			link_to "Unlike", like_bar_path(bar)
		else
			#We don't like it yet
			link_to "Like", like_bar_path(bar)
		end
	end

	

	def iframe_url(bar)
		bar.address + "&output=embed"
	end

	




end

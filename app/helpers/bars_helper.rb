module BarsHelper
	def toggle_like_button(bar, user)
		if user.flagged?(bar, :like)
			#We already like it
			button_to "Dislike", like_bar_path(bar), :method => :get
		else
			#We don't like it yet
			button_to "Like", like_bar_path(bar), :method => :get
		end
	end

	def iframe_url(bar)
		bar.address + "&output=embed"
	end
end

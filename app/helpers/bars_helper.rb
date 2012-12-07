module BarsHelper
	def iframe_url(tour)
		tour.url + "&output=embed"
	end
end

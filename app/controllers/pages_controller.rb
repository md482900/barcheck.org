class PagesController < ApplicationController
  def index

  	if Bar.count > 0
    	@bars = Bar.find(3.times.map{ 1 + Random.rand(Bar.count) } )
    else
    	@bars = Bar.all
    end
    	respond_to do |format|
      	format.html # show.html.erb
      	format.json { render json: @bar }
    
   		#binding.pry
		end
  end
end

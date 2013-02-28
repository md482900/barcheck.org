class PagesController < ApplicationController
  def index
    @bars = Bar.find(3.times.map{ 1 + Random.rand(Bar.count) } )

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bar }
    end
  end
end

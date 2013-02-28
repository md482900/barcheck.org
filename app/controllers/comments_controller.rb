class CommentsController < ApplicationController
  def create
  	@bar = Bar.find(params[:bar_id])
  	@comment = @bar.comments.build(:bar_id => params[:bar_id],:text =>params[:comment][:text], :user_name => current_user.user_name)
  	@comment.save

  	redirect_to @bar
  end
end

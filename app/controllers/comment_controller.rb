class CommentController < ApplicationController

	def create
  		@comment = Bar.find(params[:id].comments.new(:user_id => current_user.id,:bar_name => @bar.name, :body => (params[:comment]), :user_name => current_user.user_name))
  		@comment.save!
  		redirect_to @comment
	end
end

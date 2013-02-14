class ApplicationController < ActionController::Base
  protect_from_forgery
  def authenticate_admin_user!
  	redirect_to new_user_session_path unless current_user && current_user.has_role?(:admin)
  	end
end

class ApplicationController < ActionController::Base
  protect_from_forgery
  def authenticate_admin_user!
  	redirect_to new_user_session_path unless current_user && current_user.has_role?(:admin)
  	end
  	rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Du musst Dich zu erst anmelden"
    redirect_to "/users/sign_in"
  end 



  rescue_from ActiveRecord::RecordNotFound do |exception|
  	flash[:notice] = "Die Bar wurde noch nicht erstellt"
  	redirect_to "/bars/new"
  end
end

ActiveAdmin.register User do
	form do |f|
		f.inputs "User Details" do
			f.input :email
			f.input :password
			f.input :password_confirmation
			f.input :roles, :label => "Rolle", :as => :check_boxes
		end
		f.buttons
	end
end
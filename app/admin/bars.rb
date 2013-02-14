ActiveAdmin.register Bar do
	form do |f|
		f.inputs "Details" do
			f.input :name
			f.input :vote
			f.input :description
			f.input :address
			f.input :picture
		end
	f.buttons
	end		  
end

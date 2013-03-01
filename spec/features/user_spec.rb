require 'spec_helper.rb'

describe 'Devise' do 


	before(:each )do
		@bar1 = FactoryGirl.create(:bar1)
	end
	it'registrates a new user' do 
		visit '/users/sign_up'
		fill_in 'user_user_name', :with => 'dummy'
		fill_in 'user_email', :with => 'dummy@test.de'
		fill_in 'user_password', :with => '1234567'
		fill_in 'user_password_confirmation', :with => '1234567'
		find("#regis").click
		page.should have_content 'Willkommen'
	end


	it' tests log out' do 
		visit '/users/sign_up'
		fill_in 'user_user_name', :with => 'dummy'
		fill_in 'user_email', :with => 'dummy@test.de'
		fill_in 'user_password', :with => '1234567'
		fill_in 'user_password_confirmation', :with => '1234567'
		find("#regis").click
		page.should have_content 'Willkommen'

		click_link "Abmelden"
		page.should have_content 'Auf wiedersehen'


	end
end

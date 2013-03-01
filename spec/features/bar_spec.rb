require 'spec_helper.rb'

describe 'create Bar' do
	before (:each ) do
		@user1 = FactoryGirl.create(:user1)
		@bar1 = FactoryGirl.create(:bar1)
		visit '/users/sign_in'
			fill_in 'Email', :with => @user1.email
			fill_in 'Password', :with => @user1.password
		find("#Anmelden").click
		page.should have_content 'erfolgreich'
	end


	it'creates a new bar' do
		visit'bars/new'
		fill_in 'name', :with => 'Test Bar'
		fill_in 'comment', :with => 'Das ist ein Test'
		fill_in 'address', :with => 'https://maps.google.de'
		click_button 'save'
		page.should have_content 'Test Bar'
	end








end
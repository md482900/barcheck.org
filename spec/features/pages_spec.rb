require 'spec_helper'

describe 'home page' do
	before(:each ) do
		visit root_path
	end

  it 'welcomes the user' do

    page.should have_content('Bewerten')
  end


  it "visits login page" do
    click_link 'Login'
    page.should have_content "Anmelden"
   end

   it "visits sign_up page" do
    click_link 'Registrieren'
    page.should have_content "Registrieren"
   end

end
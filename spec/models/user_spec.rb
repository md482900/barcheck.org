require 'spec_helper.rb'

describe User do
	it 'is valid' do
		u= User.new email: 'tester@test.de', password: '123456', user_name: 'tester'
		u.should be_valid
	end

	it 'is not valid without email' do
		u= User.new  password: '123456', user_name: 'tester'
		u.should_not be_valid
	end


	it 'is not valid without password' do
		u= User.new  email: 'tester@test.de', user_name: 'tester'
		u.should_not be_valid
	end

	it 'is not valid without email' do
		u= User.new  password: '123456', user_name: 'tester'
		u.should_not be_valid
	end


	it 'is not valid without user_name' do
		u= User.new email: 'tester@test.de', password: '123456'
		u.should_not be_valid
	end

	it 'should have many comments ' do
		user = User.reflect_on_association(:comments)
		user.macro.should == :has_many
	end

	#flaggabble , #flaggings
	it'is empty' do
		u= User.new email: 'tester@test.de', password: '123456', user_name: 'tester'
		u.save
		bar = Bar.new name:'Test Bar', description: 'My rspec Test', address: 'http://maps.google.de/'
		bar.save
		u.flaggings.should be_empty	
		bar.flaggings.should be_empty
	end	

	it'is not empty' do
		u= User.new email: 'tester@test.de', password: '123456', user_name: 'tester'
		u.save
		bar = Bar.new name:'Test Bar', description: 'My rspec Test', address: 'http://maps.google.de/'
		bar.save

		u.flag(bar, :like)
		u.flaggings.reload.should_not be_empty
		bar.flaggings.reload.should_not be_empty

	end



end

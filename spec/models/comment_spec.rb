require "spec_helper.rb"

describe Comment do 
	before (:each) do
		@bar = Bar.new name:'Test Bar', description: 'My rspec Test', address: 'http://maps.google.de/'
		@bar.save
		@user= User.new email: 'tester@test.com', password: 'test123', user_name: 'mrTester'
		@user.save
	end

	it 'is not valid without user_name' do
		x = @bar.id
		i = Comment.new( :bar_id => x, :text => 'Das ist ein Test')
		i.should_not be_valid
	
	end
		it 'is not valid without bar_id' do
		i = Comment.new( :user_name => 'mrTester', :text => 'Das ist ein Test')
		i.should_not be_valid
	
	end

	it 'is valid without text ' do
		x = @bar.id
		i = Comment.new(:user_name => 'mrTester', :bar_id => x)
		i.should be_valid
	end

	it 'is valid ' do
		x = @bar.id
		i = Comment.new(:user_name => 'mrTester', :bar_id => x, :text => 'Das ist ein Test')
		i.should be_valid
	end

	it 'should belongs_to bar' do
		m = Comment.reflect_on_association(:bar)
		m.macro.should == :belongs_to
	end

	it'should not exists if bar is deleted' do
		x = @bar.id
		i = Comment.new(:user_name => 'mrTester', :bar_id => x, :text => 'Das ist ein Test')
		i.save
		@bar.destroy
		Comment.exists?(i).should be_false
	end


	it 'should belongs_to user' do
		m = Comment.reflect_on_association(:user)
		m.macro.should == :belongs_to
	end

	it'should exists if user is deleted' do
		x = @bar.id
		i = Comment.new(:user_name => 'mrTester', :bar_id => x, :text => 'Das ist ein Test')
		i.save
		@user.destroy
		Comment.exists?(i).should be_true
	end

end





require 'spec_helper.rb'

describe Bar do
	it'should  be valid' do
		bar = Bar.new name:'Test Bar', description: 'My rspec Test', address: 'http://maps.google.de/'
		bar.should be_valid
	end

	it 'is invalid without bar description & address' do
		bar = Bar.new name:'Test Bar'
		bar.should_not be_valid
	end

	it 'is invalid without bar address' do
		bar = Bar.new name:'Test Bar', description: 'My rspec Test'
		bar.should_not be_valid
	end

	it 'is invalid without bar name' do
		bar = Bar.new description:'My rspec Test', address: 'http://maps.google.de/'
		bar.should_not be_valid
	end

	

	it "should have many comments" do
        bar = Bar.reflect_on_association(:comments)
        bar.macro.should == :has_many
    end

    it "should have many rates" do 
    	bar = Bar.reflect_on_association(:rates	)
    	bar.macro.should == :has_many
    end

    it 'should have many bar_images' do
    	bar =Bar.reflect_on_association(:bar_images)
    	bar.macro.should == :has_many
    end





		
end

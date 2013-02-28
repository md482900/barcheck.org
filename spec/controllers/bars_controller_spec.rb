
require "spec_helper.rb"
describe BarsController do


	before(:each) do
		@bar = Bar.new name:'Test Bar', description: 'My rspec Test', address: 'http://maps.google.de/'	
		@bar.save
	end

    it 'should create new bar' do	
		Bar.exists?(@bar).should be_true
    end


	it 'should delete bar' do
		Bar.delete @bar
		Bar.exists?(@bar).should be_false
	end

	it 'should destroy bar' do	
		Bar.destroy @bar
		Bar.exists?(@bar).should be_false
	end

end
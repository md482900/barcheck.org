require 'spec_helper'

describe BarImage do
	it 'should belongs_to bar' do
		m = BarImage.reflect_on_association(:bar)
		m.macro.should == :belongs_to
	end

	it 'should be valid' do
		x =BarImage.new :photo => File.new(Rails.root + 'spec/fixtures/images/rails.png')
		x.should be_valid
	end

end

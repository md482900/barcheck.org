require 'spec_helper'

describe BarImage do
	it 'should belongs_to bar' do
		m = BarImage.reflect_on_association(:bar)
		m.macro.should == :belongs_to
	end

	it 'should be valid' do
		x =BarImage.new :photo => Rails.root.join("app/images/rails.png").open
		x.should be_valid
	end

end

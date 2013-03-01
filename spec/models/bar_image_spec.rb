require 'spec_helper'

describe BarImage do
	it 'should belongs_to bar' do
		m = BarImage.reflect_on_association(:bar)
		m.macro.should == :belongs_to
	end



end

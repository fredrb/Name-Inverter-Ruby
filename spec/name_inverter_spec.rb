require_relative '../name_inverter'

RSpec.describe 'Name Inverter Test' do 
	before(:each) do
		@inverter = NameInverter.new
	end

	it 'should return empty string on invalid parameter' do
		expect(@inverter.invert(nil)).to eq ''
		expect(@inverter.invert("")).to eq ''
		expect(@inverter.invert(1)).to eq ''
	end

	it 'should return single name' do
		expect(@inverter.invert('name')).to eq 'name'
	end

	it 'should return last, first' do
		expect(@inverter.invert('first last')).to eq 'last, first'
	end
end

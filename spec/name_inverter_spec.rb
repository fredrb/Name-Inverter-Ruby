require_relative '../name_inverter'

RSpec.describe 'Name Inverter Test' do 
	before(:each) do
		@inverter = NameInverter.new
	end

	def test_case(input, expected)
		expect(@inverter.invert(input)).to eq expected
	end

	context 'Error Handling' do
		it 'should return empty string on invalid parameter' do
			test_case(nil, '')
			test_case("", "")
			test_case(1, "")
		end
	end

	context 'Functionality' do
		it 'should return "name" if "name" passed' do
			test_case('name', 'name')
			test_case(' name ', 'name')
			test_case(' name', 'name')
		end

		it 'should return last, first' do
			test_case('first last', 'last, first')
		end

		it 'should consider Mr. title' do
			test_case('Mr. First', 'Mr. First')
			test_case('Mr. First Last', 'Mr. Last, First')
			test_case('mr. First Last', 'mr. Last, First')
		end

		it 'should keep other titles/names at the end' do
			test_case('First Last III', 'Last, First III')
			test_case('Mr. First Last III', 'Mr. Last, First III')
		end
	end

end

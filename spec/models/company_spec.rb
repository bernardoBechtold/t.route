require 'spec_helper'

describe 'Company' do
	before do
		@company = FactoryGirl.build(:company)
	end

	subject {@company}

	context 'when #initialize' do	
		describe 'it has a valid factory' do
			it{should be_valid}
		end
		describe 'it has to respond to' do
			it{should respond_to(:name)}
			it{should respond_to(:id)}
		end
	end
	describe 'must has a valid name' do
		context 'not nil' do
			it do
				@company.name = nil
				should_not be_valid
			end
		end
		context 'not bigger than 51 char' do
			it do
				51.times{@company.name+='b'}
				should_not be_valid
			end
		end
		context 'not smaller than 2 char' do
			it do
				@company.name = '1'
				should_not be_valid
			end
		end
		
		
		
	end
end

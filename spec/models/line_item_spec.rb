require 'rails_helper'

describe LineItem do 
	context 'associations' do 
		it { is_expected.to belong_to :itemable }
		it { is_expected.to belong_to :order }
		it { is_expected.to belong_to :cart }
	end 

	context 'validations' do 
		it { is_expected.to validate_presence_of :quantity }
		it { is_expected.to validate_presence_of :unit_cost }
		it { is_expected.to validate_presence_of :total_cost }
		it do 
			is_expected.to validate_numericality_of(:quantity).is_greater_than(0.1)
		end
		it do 
			is_expected.to validate_numericality_of(:unit_cost).is_greater_than(0.1)
		end
		it do 
			is_expected.to validate_numericality_of(:total_cost).is_greater_than(0.1)
		end
	end
	context 'delegations' do 
		it { is_expected.to delegate_method(:name).to(:itemable) }
	end 
end 
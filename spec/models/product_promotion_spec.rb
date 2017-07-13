require 'rails_helper'

describe ProductPromotion do 
	context 'associations' do 
		it { is_expected.to belong_to :product }
		it { is_expected.to belong_to :promotion }
	end 

	context 'delegations' do 
		it { is_expected.to delegate_method(:name).to(:product).with_prefix }
	end 
end 

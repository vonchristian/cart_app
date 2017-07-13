require 'rails_helper'

describe Code do 
	context 'associations' do 
		it { is_expected.to have_many :promotion_codes }
	end 
	context 'validations' do 
		it { is_expected.to validate_presence_of :code }
		it { is_expected.to validate_uniqueness_of :code }
	end
	it { is_expected.to define_enum_for(:promo_type).with([:percent, :amount]) }
end 


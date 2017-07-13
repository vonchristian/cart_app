require 'rails_helper'

describe Promotion do 
	context 'associations' do 
		it { is_expected.to have_many :product_promotions }
		it { is_expected.to have_many :products }
	end 
	context 'validations' do 
		it { is_expected.to validate_presence_of :name }
		it { is_expected.to validate_uniqueness_of :name }
	end

	it '#total_price' do 
		promotion = create(:promotion)
		product_promotion = create(:product_promotion, promotion: promotion, promo_price: 10)
		another_product_promotion = create(:product_promotion, promotion: promotion, promo_price: 10)
  
    expect(promotion.total_price).to eql(20)
  end
end
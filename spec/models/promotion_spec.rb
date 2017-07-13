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

	it '#discounted_price' do 
		promotion = create(:promotion)
		product_promotion = create(:product_promotion, promotion: promotion, promo_price: 10)
		another_product_promotion = create(:product_promotion, promotion: promotion, promo_price: 10)
  
    expect(promotion.discounted_price).to eql(20)
  end
  it '#regular_price' do 
		promotion = create(:promotion)
		product = create(:product, price: 10)
		product_promotion = create(:product_promotion, promotion: promotion, product: product, product_quantity: 1)
		another_product_promotion = create(:product_promotion, promotion: promotion, product: product, product_quantity: 1)
  
    expect(promotion.regular_price).to eql(20)
  end
end
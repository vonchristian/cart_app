require 'rails_helper'

describe ProductPromotion do 
	context 'associations' do 
		it { is_expected.to belong_to :product }
		it { is_expected.to belong_to :promotion }
	end 

	context 'delegations' do 
		it { is_expected.to delegate_method(:name).to(:product).with_prefix }
	end 

	 it '#regular_price' do 
		product = create(:product, price: 10)
		promotion = create(:promotion)
		product_promotion = create(:product_promotion, promotion: promotion, product: product, product_quantity: 1)
    expect(product_promotion.regular_price).to eql(10)
  end
end 

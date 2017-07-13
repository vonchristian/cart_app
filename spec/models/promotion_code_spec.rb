require 'rails_helper'

describe PromotionCode do 
	context 'associations' do 
		it { is_expected.to belong_to :cart }
		it { is_expected.to belong_to :code }
	end 

	it ".applicable_discount" do 
		  first_code = create(:code, promo_type: 'percent', percent: 0.1)
			first_cart = create(:cart)
			first_line_item = create(:line_item, total_cost: 100, cart: first_cart)
			percent_promotion_code = create(:promotion_code, code: first_code, cart: first_cart)

			second_code = create(:code, promo_type: 'amount', amount: 50)
			second_cart = create(:cart)
			second_line_item = create(:line_item, total_cost: 100, cart: second_cart)
			amount_promotion_code = create(:promotion_code, code: second_code, cart: second_cart)

			expect(PromotionCode.applicable_discount).to eql(60)
	end
	context '#applicable_discount' do
		it 'as percent based' do 
			code = create(:code, promo_type: 'percent', percent: 0.1)
			cart = create(:cart)
			line_item = create(:line_item, total_cost: 100, cart: cart)
			promotion_code = create(:promotion_code, code: code, cart: cart)

			expect(promotion_code.applicable_discount).to eql(10)
		end

		it 'as amount based' do 
			code = create(:code, promo_type: 'amount', amount: 50)
			cart = create(:cart)
			line_item = create(:line_item, total_cost: 100, cart: cart)
			promotion_code = create(:promotion_code, code: code, cart: cart)

			expect(promotion_code.applicable_discount).to eql(50)
		end
	end

end 
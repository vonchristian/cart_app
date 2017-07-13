require 'rails_helper'

describe Cart do 
	context 'associations' do 
		it { is_expected.to have_many :promotion_codes }
		it { is_expected.to have_many :line_items }
		it { is_expected.to have_many :codes }

	end 
	it '#total_cost' do 
		cart = create(:cart)
		line_item = create(:line_item, total_cost: 10, cart: cart)
		another_line_item = create(:line_item, total_cost: 10, cart: cart)
    
    expect(cart.total_cost).to eql(20)
  end

  it '#total_discount' do 
  	cart = create(:cart)
		line_item = create(:line_item, total_cost: 10, cart: cart)
		code = create(:percent_based_code, percent: 0.1)
  	promotion_code = create(:promotion_code, code: code, cart: cart)

  	expect(cart.total_discount).to eql(1)
  end
  it '#total_cost_less_discount' do 
  	cart = create(:cart)
		line_item = create(:line_item, total_cost: 10, cart: cart)
		another_line_item = create(:line_item, total_cost: 10, cart: cart)
    
    expect(cart.total_cost).to eql(20)

    cart = create(:cart)
		line_item = create(:line_item, total_cost: 10, cart: cart)
		code = create(:percent_based_code, percent: 0.1)
  	promotion_code = create(:promotion_code, code: code, cart: cart)

  	expect(cart.total_discount).to eql(1)

  	expect(cart.total_cost_less_discount).to eql(9)
  end
end 
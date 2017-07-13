require 'rails_helper'

describe Order do 
	context 'associations' do 
		it { is_expected.to have_many :line_items }
	end 
end 
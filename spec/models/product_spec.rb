require 'rails_helper' 

describe Product do 
	context 'associations' do 
		it { is_expected.to have_many :product_promotions }
		it { is_expected.to have_many :promotions }
  end

  context 'validations' do 
  	it { is_expected.to validate_presence_of :name }
  	it { is_expected.to validate_presence_of :price }
  	it { is_expected.to validate_presence_of :code }
  	it { is_expected.to validate_presence_of :data_size }
  end 
end 


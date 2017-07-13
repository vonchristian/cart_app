class Code < ApplicationRecord
	enum promo_code_type: [:percent, :amount]
	
	has_many :promotion_codes

	validates :code, presence: true, uniqueness: true
end

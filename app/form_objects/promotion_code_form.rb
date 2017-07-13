class PromotionCodeForm 
	include ActiveModel::Model
	attr_accessor :code, :cart_id
  
  def save
  	ActiveRecord::Base.transaction do 
  		save_promotion_code
  	end 
  end
  def find_code 
  	Code.find_by(code: code)
  end
  def save_promotion_code 
  	Cart.find_by(id: cart_id).promotion_codes.find_or_create_by(code: find_code)
  end
end
product_1 = Product.create(code: 'ult_small', name: 'Unlimited 1GB', price: 24.90, data_size: 1000)
product_2 = Product.create(code: 'ult_medium', name: 'Unlimited 2GB', price: 29.90, data_size: 2000)
product_3 = Product.create(code: 'ult_large', name: 'Unlimited 5GB', price: 44.90, data_size: 5000)
product_4 = Product.create(code: '1gb', name: '1GB Data pack', price: 9.90, data_size: 1000)

#promotions 
promotion_1 = Promotion.create(name: 'Unlimited 1GB Sim')
promotion_2 = Promotion.create(name: 'Unlimited 5GB Sim')

ProductPromotion.create(promotion: promotion_1, product: product_1, product_quantity: 3, promo_price: 49.80 )
ProductPromotion.create(promotion: promotion_1, product: product_4, product_quantity: 1, promo_price: 0, free: true )

ProductPromotion.create(promotion: promotion_2, product: product_3, product_quantity: 4, promo_price: 119.70 )
ProductPromotion.create(promotion: promotion_2, product: product_4, product_quantity: 1, promo_price: 0, free: true )


#Code 
Code.create(promo_type: 'percent', percent: 0.1, code: 'I<3AMAYSIM')
Code.create(promo_type: 'amount', amount: 20, code: 'I<3AMAYSIM_2')

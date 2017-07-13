# Cart App

Ruby version: MRI 2.4.1
Rails version: 5.1.2

## To run this demo application
- Clone this repository
- Bundle install
- Run rails db:create db:migrate db:seed 
- Visit localhost:3000 to try demo app

##To create promotions
- Visit /promotions
- Create promotion
- Add product to promotions (bundle products)
- Add free bundles to promotion by checking 'Free' radio button

##To Create Code
- visit /codes
- click link 'New Code'
- choose percent or amount based promo code type

##To redeem code 
- visit /store
- Try adding products to cart
- Try 'I<3AMAYSIM' code for a percent based discount
- Try 'I<3AMAYSIM_2' code for an amount based discount

##To run tests 
- Run rspec

###Deviations from Test requirements 
- Creating bundled products for promotions for one-click "Purchase of products" instead of single item purchase and matching it to applicable promotions which is complicated
- Added amount based code discount

Rails.application.routes.draw do
	root to: 'store#index'
	resources :store, only: [:index]
	resources :products, only: [:index, :new, :create]
	resources :promotions, only: [:index, :show, :new, :create] do 
		resources :product_promotions, only: [:new, :create], module: :promotions
	end
	resources :line_items, only: [:new, :create]
	resources :orders, only: [:new, :create]
	resources :promotion_codes, only: [:create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
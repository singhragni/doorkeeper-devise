Rails.application.routes.draw do
	
 # 	use_doorkeeper do
 #  		skip_controllers :authorizations, :applications,
 #    	:authorized_applications
	# end
 #  	devise_for :users
 #  	root to: 'home#index'
use_doorkeeper
	get 'home/index'
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root to: 'home#index'
    end
    unauthenticated :user do
      root to: "devise/sessions#new"
    end
end
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html  


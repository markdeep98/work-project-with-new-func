Rails.application.routes.draw do
  namespace :users do
    get 'omniauth_callbacks/facebook'
  end

  devise_for :users, controllers: { registrations: 'registrations', :omniauth_callbacks => "users/omniauth_callbacks" }

  authenticated :user do
    root 'questionnaires#index', as: :authenticated_root
	    resources :questionnaires, shallow: true do
	    	resources :questions
	  	end
  end

  root to: redirect('/users/sign_in')

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

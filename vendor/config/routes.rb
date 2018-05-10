Rails.application.routes.draw do
 	
  	devise_for :users, :controllers => { registrations: 'registrations' }
	
	resources :posts

	authenticated :user do
		root "questionnaires#index", as: :authenticated_root
	end

	root :to => redirect("/users/sign_in")
	
	resources :questionnaires
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

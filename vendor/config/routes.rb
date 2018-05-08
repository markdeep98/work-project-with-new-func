Rails.application.routes.draw do
 	
  	devise_for :users, :controllers => { registrations: 'registrations' }
	
	resources :posts

	authenticated :user do
		root "pages#home", as: :authenticated_root
	end

	root :to => redirect("/users/sign_in")
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :gweets
  resources :hotel
  devise_for :users
	root to: "hotel#index" 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

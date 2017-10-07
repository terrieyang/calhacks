Rails.application.routes.draw do

  resources :inventories

  resources :ingredients

  resources :recipes

  root 'home#index'

  get 'home' => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :recipes do
  	get :autocomplete_ingredient_name, :on => :collection
  end
end

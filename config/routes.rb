Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :new, :create, :show, :edit, :update]
  resources :recipes, only: [:index, :new, :create, :show, :edit, :update]
  resources :ingredients, only: [:index, :new, :create, :show, :edit, :update]
end

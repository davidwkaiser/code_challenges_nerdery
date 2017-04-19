Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :snacks, :except => [:show, :delete, :update, :destroy]
  # resources :locations
  root 'snacks#index'
end

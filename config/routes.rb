Rails.application.routes.draw do
  resources :yoga_poses, except: [:create, :update, :destroy]
  resources :yoga_categories, except: [:create, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
end

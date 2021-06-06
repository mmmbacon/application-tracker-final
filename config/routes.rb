Rails.application.routes.draw do
  root 'static#index'
  #get 'static/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api, defaults: { format: 'json' } do
    resources :users, only: [:create, :show, :index]
    resources :jobs, only: [:index, :create, :destroy, :update]
    resources :events, only: [:index, :create, :destroy, :update]
  end
  
end


# EXAMPLE
# namespace :admin do
#   root to: 'dashboard#show'
#   resources :products, except: [:edit, :update, :show]
#   resources :categories, except: [:edit, :update, :show]
# end
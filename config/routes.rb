Rails.application.routes.draw do
  root 'static#index'
  #get 'static/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  
  namespace :api, defaults: { format: 'json' } do
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
    get '/logged_in', to: 'sessions#is_logged_in?'
    
    resources :users, only: [:create, :show ], shallow: true do
      resources :jobs, only: [:index, :create, :destroy, :update]
    end

    resources :jobs, only: [], shallow: true do
      resources :events, only: [:index, :show, :create, :destroy, :update]
    end
    
    resources :events, only: [:index, :show, :create, :destroy, :update]
  end
  
end


# EXAMPLE
# namespace :admin do
#   root to: 'dashboard#show'
#   resources :products, except: [:edit, :update, :show]
#   resources :categories, except: [:edit, :update, :show]
# end
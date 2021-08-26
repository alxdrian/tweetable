Rails.application.routes.draw do
  root to: 'tweets#index'
  resources :tweets
  resources :users do
    resources :likes
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Route for Design system reference
  get '/design', to: 'designs#index'
end

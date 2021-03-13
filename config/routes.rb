Rails.application.routes.draw do
  get '/signup' => 'users#new'
  root to: 'pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
end

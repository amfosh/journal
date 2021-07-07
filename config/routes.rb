Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  root to: 'pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'

  resources :entries do
    collection do
      get 'small_space_gardening'
      get 'vegetable'
      get 'pests'
      get 'flowers'
      end
    end
  end
end


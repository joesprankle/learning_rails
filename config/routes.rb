Rails.application.routes.draw do
  get 'pages/index'

  devise_for :users
  root to: "pages#index"


  resources :products do
    resources :costs
    resources :product_photos
  end
  resources :categories
  resources :costs

  resources :manufacturer


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

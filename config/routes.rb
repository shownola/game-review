Rails.application.routes.draw do
  devise_for :users
  root 'games#index'
  resources :genres
  resources :games do
    member do
      put 'like' => 'games#like'
    end
  end

  post 'games/search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

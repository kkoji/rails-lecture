Rails.application.routes.draw do
  get 'users/new'

  get 'users/create'

  get 'users/me'

  get 'home/index'

  get 'sessions/create'

  get 'sessions/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :boards
  resources :comments, only: %i[create destroy]
end

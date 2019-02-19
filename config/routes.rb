Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: %i[create destroy]
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root 'posts#index'
end

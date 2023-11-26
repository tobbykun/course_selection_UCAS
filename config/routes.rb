Rails.application.routes.draw do
  resources :students, only: [:index, :show]
  resources :courses, only: [:index, :show] do
    member do
      post 'enroll'
      delete 'drop'
    end
  end

  resources :sessions, only: [:new, :create, :destroy]
  get 'login', to: 'sessions#new', as: 'login'
  delete 'logout', to: 'sessions#destroy', as: 'logout'

  root 'students#index'
end

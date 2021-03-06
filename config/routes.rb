Rails.application.routes.draw do
  get 'meals/grouped_ratings', to: 'meals#ratings'
  resources :reviews
  resources :meals do 
    resources :reviews, only: [:new, :index]
  end

  resources :restaurants
  devise_for :users, :controllers => {registrations: 'registrations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'application#welcome'



end

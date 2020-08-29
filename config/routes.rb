Rails.application.routes.draw do
  get '/' => 'sessions#welcome'
  resources :user_goals
  resources :goals
  resources :users
  resources :teams
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new' # we don't need a post 'signup' because resources :users give us post 'users' => 'users#create'

  resources :user_goals
  resources :goals
  resources :users
  resources :teams
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end






# <option value="<%= @user.team_id %>">Team A</option>

# <option value="1">Team A</option>
# <% teams.each do |team| %>
#   <option value=<%= team.id %>><%= team.name %></option>
# <% end %>


# stretch goals:
# 1. users/admin can change team name
# 2. 



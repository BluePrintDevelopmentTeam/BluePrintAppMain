Rails.application.routes.draw do
  
  root 'pages#home'
  
  #resources :users
  
  get 'login', to: 'sessions#new', as: :login
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: :logout
  
  get 'players', to: 'players#index', as: :players
  get 'player/new', to: 'players#new', as: :new_player
  post 'player/new', to: 'players#create'
  delete 'player/:id/delete', to: 'players#destroy', as: :delete_player
  
  get 'profile' => 'profiles#show', as: :profile
  get 'profile/change_password' => 'profiles#change_password', as: :change_password
  post 'profile/change_password' => 'profiles#update_password'
  
  get 'sports', to: 'sports#index', as: :sports
  get 'sport/new', to: 'sports#new', as: :new_sport
  post 'sport/new', to: 'sports#create'
  get 'sport/:id', to: 'sports#show', as: :show_sport
  get 'sport/:id/edit', to: 'sports#edit', as: :edit_sport
  post 'sport/:id/edit', to: 'sports#update'
  delete 'sport/:id/delete', to: 'sports#destroy', as: :delete_sport
  get 'sport/:sport_id/addLeague', to: 'leagues#new', as: :add_league
  post 'sport/:sport_id/addLeague', to: 'leagues#create'
  
  get 'leagues/:sport_id', to: 'leagues#index', as: :leagues
  #get 'league/new', to: 'leagues#new', as: :new_league
  #post 'league/new', to: 'leagues#create'
  get 'league/:id', to: 'leagues#show', as: :show_league
  get 'league/:id/edit', to: 'leagues#edit', as: :edit_league
  post 'league/:id/edit', to: 'leagues#update'
  delete 'league/:id/delete', to: 'leagues#destroy', as: :delete_league
  get 'league/:league_id/addSeason', to: 'seasons#new', as: :add_season
  post 'league/:league_id/addSeason', to: 'seasons#create'
  
  get 'seasons/:sport_id', to: 'seasons#index', as: :seasons
  get 'season/:id', to: 'seasons#show', as: :show_season
  get 'season/:id/edit', to: 'seasons#edit', as: :edit_season
  post 'season/:id/edit', to: 'seasons#update'
  delete 'season/:id/delete', to: 'seasons#destroy', as: :delete_season
  get 'season/:season_id/addTeam', to: 'teams#new', as: :add_team
  post 'season/:season_id/addTeam', to: 'teams#create'
  
  get 'teams/:season_id', to: 'teams#index', as: :teams
  get 'team/:id', to: 'teams#show', as: :show_team
  get 'team/:id/edit', to: 'teams#edit', as: :edit_team
  post 'team/:id/edit', to: 'teams#update'
  delete 'team/:id/delete', to: 'teams#destroy', as: :delete_team
  
  get 'MyPortfolio', to: 'portfolios#show', as: :show_portfolio
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

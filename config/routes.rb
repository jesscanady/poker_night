ActionController::Routing::Routes.draw do |map|
  # The priority is based upon order of creation: first created -> highest priority.

  map.resources :games

  map.namespace :admin do |admin|
    admin.root :controller => "games"
    admin.resources :games
    admin.resources :users
    admin.resource :session
  end
  
  map.root :controller => "games"

end

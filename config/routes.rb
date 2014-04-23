Auth::Application.routes.draw do
  resources :users
  get "sign_up" => "users#new", :as => "sign_up"
  root :to => "users#new"
  resources :sessions
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  
end

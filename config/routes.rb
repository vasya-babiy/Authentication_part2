Auth::Application.routes.draw do
  resources :admins


  resources :sessions
  resources :users

  get "sign_up" => "users#new", as: "sign_up"
  get "log_out" => "sessions#destroy", as: "log_out"
  get "log_in" => "sessions#new", as: "log_in"
  get "edit" => "users#edit", as: "edit"
  
  root :to => "users#new"
  root :to => "users#edit"
  root :to => "users#update"

end

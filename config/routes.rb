Auth::Application.routes.draw do
  resources :sessions
  resources :users


  get "sign_up" => "users#new", as: "sign_up"
  get "edit" => "users#edit", as: "edit"
  get "sessions/edit"  
  get "log_out" => "sessions#destroy", as: "log_out"
  get "log_in" => "sessions#new", as: "log_in"
  get "edit" => "sessions#edit", as: "edit"

  root :to => "users#new"
  
end

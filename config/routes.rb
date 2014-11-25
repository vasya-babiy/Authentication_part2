Auth::Application.routes.draw do
  resources :admins
  resources :sessions
  resources :users, except: [:new] do
    resource :profile #, path_names: { edit: '' }, only: [ :index, :show, :edit, :update ]
  end
  get "sign_up" => "users#new", as: "sign_up"
  get "log_out" => "sessions#destroy", as: "log_out"
  get "log_in" => "sessions#new", as: "log_in"
  
  root :to => "users#index"

end

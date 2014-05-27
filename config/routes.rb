Auth::Application.routes.draw do
  resources :admins
  resources :sessions

  resources :users do
    resource :profile, path_names: { edit: '' }, only: [ :index, :edit, :update ]
  end

  get "sign_up" => "users#new", as: "sign_up"
  get "log_out" => "sessions#destroy", as: "log_out"
  get "log_in" => "sessions#new", as: "log_in"
  get "edit" => "users#edit", as: "edit"
  delete "destroy" => "admins#destroy", as: "destroy"
  delete "destroy" => "users#destroy", as: "destroy"
  
  root :to => "users#new"
  root :to => "users#edit"
  root :to => "users#update"
  root :to => "admins#destroy"

end

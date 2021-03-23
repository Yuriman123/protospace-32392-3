Rails.application.routes.draw do
  devise_for :installs
  devise_for :users
  root to: "prototypes#index"
  get "prototype/:id/edit" => "prototypes#edit"
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy ] do
    resources :comments, only: :create 
  end
  resources :users, only: :show
end
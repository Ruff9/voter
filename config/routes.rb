Rails.application.routes.draw do
  resources :admins
  resources :users
  resources :votes
  resources :ballots

  root 'votes#index'
end

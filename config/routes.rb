Rails.application.routes.draw do
  resources :users
  resources :ballots
  resources :votes
  root 'votes#index'
end

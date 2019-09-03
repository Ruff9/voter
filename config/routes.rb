Rails.application.routes.draw do
  resources :ballots
  resources :votes
  root 'votes#index'
end

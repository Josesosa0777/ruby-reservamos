Rails.application.routes.draw do
  devise_for :users
  get '/welcome', to: 'home#index'
  root to: "home#index"
  resources :people
  # get 'people/new', to: 'people#new'
  # post 'people', to: 'people#create'
  # get 'people/:id', to: 'people#show'
  # get 'people/:id/edit', to: 'people#edit'
  # patch 'people/:id', to: 'people#update', as: :person
  # delete 'people/:id', to: 'people#destroy'
  # get 'people', to: 'people#index'
  # get 'people/new', to: 'people#new', as: :new_people
  get 'people/user/:user_id', to: 'people#from_author'
end

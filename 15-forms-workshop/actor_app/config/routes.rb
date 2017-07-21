Rails.application.routes.draw do

  resources :actors, only: [:new, :create, :edit, :update, :show, :index]
  resources :characters

  get '/', to: 'actors#search'

  get '/search', to: 'actors#find'

  get '/actors/matches', to: 'actors#matches', as: 'matches_actors'
end

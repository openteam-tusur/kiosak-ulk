Rails.application.routes.draw do

  get 'datetime' => 'integration#datetime'
  get 'week' => 'integration#week'
  get 'temperatures' => 'date_temps#show'
  get 'orders' => 'orders#index'

  namespace :manage do
    resources :permissions, except: [:edit, :update]
    resources :places
    resources :date_temps
    resources :orders

    get 'users/search' => 'users#search', as: :users_search

    root :to => 'application#index'
  end

  root :to => 'application#index'
  get '(*path)', :to => 'application#index'

end

Rails.application.routes.draw do

  get 'datetime' => 'integration#datetime'
  get 'week' => 'integration#week'
  get 'temperatures' => 'date_temps#show'

  namespace :manage do
    resources :permissions, except: [:edit, :update]
    get 'users/search' => 'users#search', as: :users_search
    resources :places
    resources :date_temps
    root :to => 'application#index'
  end

  root :to => 'application#index'
  get '(*path)', :to => 'application#index'

end

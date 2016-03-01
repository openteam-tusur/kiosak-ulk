Rails.application.routes.draw do
  root :to => 'application#index'

  get '/time' => 'integration#time_and_week'

  namespace :manage do
    get 'temperature', to: 'term#index'

    resources :places
    root :to => 'application#index'
  end

  get '/(*path)', :to => 'application#index'
end

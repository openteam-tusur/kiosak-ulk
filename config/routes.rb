Rails.application.routes.draw do
  root :to => 'application#index'

  get '/time' => 'integration#time_and_week'

  namespace :manage do
    resources :places

    get 'temperature', to: 'term#index'
    root :to => 'application#index'
  end

  get '/(*path)', :to => 'application#index'
end

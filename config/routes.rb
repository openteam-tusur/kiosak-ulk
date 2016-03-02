Rails.application.routes.draw do

  namespace :manage do
    resources :places

    get 'temperature', to: 'term#index'
    root :to => 'application#index'
  end

  get '/datetime' => 'integration#datetime'
  get '/week' => 'integration#week'

  get '/(*path)', :to => 'application#index'

  root :to => 'application#index'

end

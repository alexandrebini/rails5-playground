Rails.application.routes.draw do
  root 'articles#index'

  namespace :admin do
    resources :articles, except: [:show]
  end
end

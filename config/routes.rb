Rails.application.routes.draw do
  root 'users#index'
  resources :users do
    member do
      get :tabs
    end
  end
end

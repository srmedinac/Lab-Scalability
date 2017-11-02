Rails.application.routes.draw do
  resources :sales
  resources :users
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/buy', to: 'buy#sale'
end

Rails.application.routes.draw do
  resources :portfolios
  get 'home/about'
  root to: 'home#about'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

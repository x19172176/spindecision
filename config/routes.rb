Rails.application.routes.draw do
  get 'confirmation/wheel'
  resources :options
  root 'options#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

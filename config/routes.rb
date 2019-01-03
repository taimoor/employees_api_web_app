Rails.application.routes.draw do
  namespace :api do
    get 'employees', to: 'employees#index'
    get 'employees/:code', to: 'employees#show'
  end
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

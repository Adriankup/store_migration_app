Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'sales#index'

  resources :sales, only: %i[index new create]
end

Rails.application.routes.draw do
root to: 'occupants#index'

resources :occupants
resources :chores

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

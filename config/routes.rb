Rails.application.routes.draw do
  resources :mts
  resources :maquinas
root 'maquinas#hall',as:'root'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

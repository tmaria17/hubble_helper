Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get  'photos', to: 'photos#index'
  post '/favorites', to: 'favorites#create'
  get  '/favorites', to: 'favorites#index'
  delete '/favorites', to: 'favorites#destroy'

end

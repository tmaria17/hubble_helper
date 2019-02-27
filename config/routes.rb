Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get  'photos', to: 'photos#index'
  # resources :users, only: [:show] do
  resources :favorites, only: [:new, :create, :show, :index]
  # end

end

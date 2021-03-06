Rails.application.routes.draw do
  resources :cocktails, only: [ :index, :show, :new, :create, :destroy] do
   resources :doses, only: [ :new, :create, :destroy ]
 end
  resources :doses, only: [ :index, :destroy ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'cocktails#index'
  mount Attachinary::Engine => "/attachinary"
end

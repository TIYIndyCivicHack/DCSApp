Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 # root 'application#static'

  scope :api do
    resources :badges
    resources :documents
    resources :photos
    resources :users
  end

  get '/login' => 'sessions#new', as: :login
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', as: :logout

end

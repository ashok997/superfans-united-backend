Rails.application.routes.draw do
  get '/signup' => 'api/v1/users#new'
  post '/signup' => 'api/v1/users#create'

  post "api/v1/login" =>'api/v1/sessions#create'


  namespace :api do
    namespace :v1 do
    resources :characters
    resources :users
    resources :user_characters
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

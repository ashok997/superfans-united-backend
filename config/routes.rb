Rails.application.routes.draw do
  get '/api/v1/signup' => 'api/v1/users#new'
  post '/api/v1/signup' => 'api/v1/users#create'

  post '/api/v1/login' =>'api/v1/sessions#create'
  delete '/api/v1/logout' =>'api/v1/sessions#destroy'
  get '/api/v1/get_current_user' => 'api/v1/sessions#get_current_user'


  namespace :api do
    namespace :v1 do
    resources :characters
    resources :users
    resources :user_characters
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

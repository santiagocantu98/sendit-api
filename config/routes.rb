Rails.application.routes.draw do
  devise_for :users
  
  namespace :api, defaults: {format: :json} do
    namespace :v1 do 
      resources :users
      resources :viajes
      resources :estados
      resources :objetos
      resources :ticket_soportes
      resources :recibos
      resources :tipo_vehiculos
      resources :ubicacion_transportes
      resources :vehiculos
      devise_scope :user do
        post "sign_up", to: "registrations#create"
        post "sign_in", to: "sessions#create"
      end

      #jsonapi_resources :users 
    end
  end
end

Rails.application.routes.draw do
  devise_for :users, path_names: {
    registration: 'sign_up'
  },controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # To wake up the server from FE request.
  get '/status', to: proc { [200, {}, ['OK']] }

  resources :users do
    collection do
      get :profile
    end
  end

  resources :blogs, only: [:index, :create, :show, :update, :destroy]
end

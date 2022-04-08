Rails.application.routes.draw do
  scope :api, defaults: { format: :json } do
    devise_for :users, controllers: { sessions: :sessions },
      path_names: { sign_in: :login }

    resource :user, only: [:show, :update]
  end
  root to: 'pages#home'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :products, only: [ :index, :show, :create ] do

      end
    end
  end

  # rutas para las categorias
  get "/categories", to: "categories#index", format: "json"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

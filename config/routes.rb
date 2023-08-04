Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :visitors do
    collection do
      get :baixar
      get :lista
    end
  end

  get "/musicas" => "musicas#index"
  get "/musicas/baixar" => "musicas#baixar"
  get "/fotos" => "fotos#index"
  get "/videos" => "videos#index"
  get "/agenda" => "agenda#index"
  get "/novidades" => "novidades#index"

  root to: "home#index"

end

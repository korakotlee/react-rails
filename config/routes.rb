Rails.application.routes.draw do
  root 'beers#index'
  namespace :api do
    namespace :v1 do
      get 'beers/index'
      post 'beers/create'
      delete '/beers/:id', to: 'beers/destroy'
    end
  end
end

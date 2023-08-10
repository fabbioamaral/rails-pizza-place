Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  get '/graphiql', to: 'graphiql#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # api/v1/... 
  namespace :api do
    namespace :v1 do
      resources :categories, :products, :pizza_borders, :flavour_categories, :flavours, :orders, :addresses, :suburbs, :order_types, :payment_methods, :clients
    end
  end

end

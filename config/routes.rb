Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # api/v1/... 
  namespace :api do
    namespace :v1 do
      resources :categories, :products, :pizza_borders
    end
  end

end

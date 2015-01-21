Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :posts
    resources :images
    resources :comments
  end
end

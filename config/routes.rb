Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :posts, except: [:new, :edit]
    resources :images, only: [:create, :destroy]
    resources :comments
  end
end

Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :posts, except: [:new, :edit] do
    	resources :comments, only: :index
    end
    resources :images, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
end

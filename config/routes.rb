Rails.application.routes.draw do

  get 'user_details/show'
  root 'posts#index', as: 'display_posts'

  devise_for :users
  get 'search_results/index'
  # get 'users', to: 'users/sign_up'

  controller :search do
    get 'search' => :new
    post 'search' => :create 
  end

  

  resources :posts do
    resources :comments 
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  root 'posts#index', as: 'display_posts'

  get 'user_details/show'
  post '/', to: 'posts#index'

  devise_for :users
  get 'search_results/index'
  # get 'users', to: 'users/sign_up'

  controller :search do
    get 'search' => :new
    post 'search' => :create 
  end

  resources :posts do
    resources :comments, except: %i[show index edit update post]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  match '*path' => 'posts#unknown_url', via: %i[get post], status: 302
  # unless Rails.env.development?

end

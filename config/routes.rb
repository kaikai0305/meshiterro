Rails.application.routes.draw do



  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  get'homes/about' => 'homes#about',as: 'about'
  resources :post_images, only: [:new,:create,:destroy,  :index, :show]
  resources :users, only: [:show, :edit, :update]

end

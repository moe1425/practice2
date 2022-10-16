Rails.application.routes.draw do

  get 'post_images/new'
  get 'post_images/show'
  get 'post_images/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
end

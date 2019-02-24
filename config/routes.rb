Rails.application.routes.draw do
  # Posts
  root 'posts#index'
  resources :posts

  # Math
  get 'math/factors' => 'math#factors'
  get 'math' => 'math#index'

  # Misc
  get 'troop1923' => 'misc#troop1923'
end
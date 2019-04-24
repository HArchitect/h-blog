Rails.application.routes.draw do
  # Posts
  root 'posts#index'
  resources :posts

  # Math
  get 'math/quadratic_factors' => 'math#quadratic_factors'
  get 'math/factors' => 'math#factors'
  get 'math' => 'math#index'

  # Misc
end
Rails.application.routes.draw do
  resources :restaurants do
    # nesting routes
    # restaurants/1/reviews/new
    resources :reviews, only: [ :new, :create ]
  end

    # member => use when you want one restaurant in particular
    # /restaurants/1/chef
  resources :reviews, only: :destroy
end

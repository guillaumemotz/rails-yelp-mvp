Rails.application.routes.draw do
  get "restaurants", to: "restaurants#index", as: :restaurants
  get "restaurants/new", to: "restaurants#new", as: :new
  post "restaurants", to: "restaurants#create", as: :create
  get "restaurants/:id", to: "restaurants#show", as: :show
  get "restaurants/:restaurant_id/reviews/new", to: "reviews#new", as: :new_restaurant_review
  post "restaurants/:restaurant_id/reviews", to: "reviews#create", as: :restaurant_reviews
end





  # # NB: The `show` route needs to be *after* `new` route.
  #

  # get    "restaurants/:id/edit", to: "restaurants#edit"
  # patch  "restaurants/:id",      to: "restaurants#update"

  # delete "restaurants/:id",      to: "restaurants#destroy"

# new_restaurant_review  GET   /restaurants/:restaurant_id/reviews/new  reviews#new
#    restaurant_reviews  POST  /restaurants/:restaurant_id/reviews      reviews#create

Rails.application.routes.draw do
  resources :sites
  resources :itinerary_sites
  resources :itineraries
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

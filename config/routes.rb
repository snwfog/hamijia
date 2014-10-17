Rails.application.routes.draw do

  resources :owners, shallow: true do
    resources :offerings
  end

  resources :students

  resources :houses, shallow: true do
    resources :addresses
    resources :rooms
  end

  match '*path', controller: :application, action: :routing_error, via: :all
end

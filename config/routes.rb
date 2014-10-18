Rails.application.routes.draw do

  # Figure out how to make this work
  # namespace :wizards do
  #   resources :offerings do
  #     resources :build, controller: 'wizards/owner_offers'
  #   end
  # end

  resources :offerings do
    resources :build, controller: 'wizards/owner_offers'
  end

  # resources :owners do
  #   resources :offerings do
  #     resources :build, controller: 'wizards/owner_offers'
  #   end
  # end
  #
  # resources :students
  #
  # resources :houses, shallow: true do
  #   resources :addresses, :rooms
  # end

  match '*path', controller: :application, action: :routing_error, via: :all
end

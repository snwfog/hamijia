Rails.application.routes.draw do
  # Figure out how to make this work
  # namespace :wizards do
  #   resources :offerings do
  #     resources :build, controller: 'wizards/owner_offers'
  #   end
  # end

  resources :owners

  get 'offerings/new', to: 'wizards/owner_offers#new'

  resources :offerings do
    resources :build, controller: 'wizards/owner_offers', only: [:show, :update]
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

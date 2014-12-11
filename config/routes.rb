Rails.application.routes.draw do
  # Figure out how to make this work
  # namespace :wizards do
  #   resources :offerings do
  #     resources :build, controller: 'wizards/owner_offers'
  #   end
  # end


  get 'choose', to: 'choose#choose'
  post 'choose/owner', to: 'choose#as_owner'
  post 'choose/student', to: 'choose#as_student'

  get 'offerings/new', to: 'wizards/owner_offers#new'

  get 'students/iamstudent', to: 'students#new'
  post 'students/choose', to: 'students#choose', as: :starts_as_a_student

  get 'owners/iamowner', to: 'owners#new'
  post 'owners/choose', to: 'owners#choose', as: :starts_as_an_owner

  resources :owners
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

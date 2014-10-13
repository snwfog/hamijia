Rails.application.routes.draw do
  resources :owners, shallow: true do
    resources :homes, shallow: true do
      resources :addresses
    end
  end

  match '*path', controller: :application, action: :routing_error, via: :all
end

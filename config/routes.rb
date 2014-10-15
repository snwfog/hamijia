Rails.application.routes.draw do

  resources :houses, shallow: true do

  end


  resources :owners, shallow: true do
    resources :homes, shallow: true do
      resources :addresses
    end
  end

  match '*path', controller: :application, action: :routing_error, via: :all
end

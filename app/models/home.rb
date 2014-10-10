class Home < ActiveRecord::Base
  has_one :owner
  has_one :address

  has_many :offers

  has_one :offer_internet
  has_one :offer_meal
  has_one :offer_smoke
end

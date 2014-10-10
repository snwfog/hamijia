class Home < ActiveRecord::Base
  belongs_to :owner
  has_one :address

  # has_many :offers

  has_many :offer_meal
  has_one :offer_internet
  has_one :offer_smoke
end

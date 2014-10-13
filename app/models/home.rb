class Home < ActiveRecord::Base
  belongs_to :offering

  has_one :address

  # Offerings
  has_many :offer_meal
  has_one :offer_internet
  has_one :offer_smoke
end

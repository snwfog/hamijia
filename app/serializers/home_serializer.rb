class HomeSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :owner
  has_one :offer_meal
  has_one :offer_smoke
  has_one :offer_internet
end

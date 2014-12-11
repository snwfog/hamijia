class Room < ActiveRecord::Base
  acts_as_commentable
  acts_as_rateable

  belongs_to :house

  has_many :offer_meal
  has_one :offer_internet
  has_one :offer_smoke
  has_one :offer_pet

  accepts_nested_attributes_for :offer_meal
  accepts_nested_attributes_for :offer_internet
  accepts_nested_attributes_for :offer_smoke
  accepts_nested_attributes_for :offer_pet
end

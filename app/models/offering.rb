class Offering < ActiveRecord::Base
  belongs_to :owner

  has_one :house

  has_many :consumables
end

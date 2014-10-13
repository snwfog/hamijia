class Offering < ActiveRecord::Base
  belongs_to :owner

  has_one :home

  has_many :consumables
end

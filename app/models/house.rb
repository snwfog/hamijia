class House < ActiveRecord::Base
  belongs_to :offering

  has_one :address
  has_many :rooms

  accepts_nested_attributes_for :address
end

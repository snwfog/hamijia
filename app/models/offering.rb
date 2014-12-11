class Offering < ActiveRecord::Base
  belongs_to :owner

  has_one :house

  has_many :consumables

  accepts_nested_attributes_for :house
  accepts_nested_attributes_for :consumables

  default_scope { includes(:owner) }

  def active?
    self[:status] == 'active'
  end
end

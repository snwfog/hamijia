class Offering < ActiveRecord::Base
  belongs_to :owner

  has_one :house

  has_many :consumables


  def active?
    self[:status] == 'active'
  end
end

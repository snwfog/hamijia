class Offering < ActiveRecord::Base
  belongs_to :owner

  has_one :home
end

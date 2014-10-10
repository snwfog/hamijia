class Owner < ActiveRecord::Base

  has_many :children
  has_one :home

end

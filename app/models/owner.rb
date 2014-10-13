class Owner < ActiveRecord::Base
  acts_as_commentable

  has_many :children
  has_many :offerings
  has_many :homes, through: :offerings
end

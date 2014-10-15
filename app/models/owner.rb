class Owner < ActiveRecord::Base
  acts_as_commentable

  default_scope { includes(:user) }
  has_one :user, as: :user

  has_many :children
  has_many :pets
  has_many :offerings
  has_many :houses, through: :offerings
end

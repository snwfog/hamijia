class Student < ActiveRecord::Base
  default_scope { includes(:user) }
  has_one :user, as: :user

  has_many :comments, as: :commentable
end

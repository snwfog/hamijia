class Student < ActiveRecord::Base
  default_scope { includes(:user) }
  has_one :user, as: :user
end

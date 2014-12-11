class Student < ActiveRecord::Base
  default_scope { includes(:user) }
  has_one :user, as: :role

  has_many :comments, as: :commentable
  def method_missing(m, *args)
    self.send(m, *args) if self.user.respond_to? :m
  end
end

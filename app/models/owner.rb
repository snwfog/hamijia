class Owner < ActiveRecord::Base
  acts_as_commentable

  # validates :user, presence: true

  # delegate :email, :first_name, :last_name, :middle_name, :phone_number, to: :user
  # delegate :email=, :first_name=, :last_name=, :middle_name=, :phone_number=, to: :user

  default_scope { includes(:user) }
  has_one :user, as: :role # Need delete cascade here

  has_many :children
  has_many :pets
  has_many :offerings
  has_many :houses, through: :offerings

  has_many :comments, as: :commentable

  accepts_nested_attributes_for :pets
  accepts_nested_attributes_for :children
  accepts_nested_attributes_for :offerings

  def method_missing(m, *args)
    self.send(m, *args) if self.user.respond_to? :m
  end
end

class Owner < ActiveRecord::Base
  acts_as_commentable

  validates :user, presence: true

  delegate :email, :first_name, :last_name, :middle_name, :phone_number, to: :user
  delegate :email=, :first_name=, :last_name=, :middle_name=, :phone_number=, to: :user

  default_scope { includes(:user) }
  has_one :user, as: :user # Need delete cascade here

  has_many :children
  has_many :pets
  has_many :offerings
  has_many :houses, through: :offerings

  has_many :comments, as: :commentable

  def initialize
    super
    self.user = User.new
  end
end

class Owner < User
  acts_as_commentable

  has_many :children
  has_many :pets
  has_many :offerings
  has_many :homes, through: :offerings

  def login
    self[:first_name]
  end
end

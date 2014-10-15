class User < ActiveRecord::Base
  belongs_to :user, polymorphic: true

  def login
    self[:first_name]
  end
end

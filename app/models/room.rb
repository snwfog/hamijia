class Room < ActiveRecord::Base
  acts_as_commentable

  belongs_to :home
end

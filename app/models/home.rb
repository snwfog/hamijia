class Home < ActiveRecord::Base
  belongs_to :offering

  has_one :address
  has_many :rooms
end

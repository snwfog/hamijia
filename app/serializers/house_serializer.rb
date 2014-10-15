class HouseSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :offering
end

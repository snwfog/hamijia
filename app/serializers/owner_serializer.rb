class OwnerSerializer < ActiveModel::Serializer
  attributes *%i(first_name last_name email phone_number)
  has_many :children
  has_one :home
end

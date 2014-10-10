class ChildSerializer < ActiveModel::Serializer
  attributes *%i(age)
end

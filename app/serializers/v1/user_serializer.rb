module V1
  class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :document, :l_price
  end
end
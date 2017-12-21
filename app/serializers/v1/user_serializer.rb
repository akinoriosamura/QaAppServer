module V1
  class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :image, :role, :document, :l_price
  end
end
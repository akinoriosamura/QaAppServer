module V1
  class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :email, :role, :access_token
  end
end
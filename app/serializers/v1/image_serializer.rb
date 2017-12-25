module V1
  class ImageSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :filename, :file
  end
end
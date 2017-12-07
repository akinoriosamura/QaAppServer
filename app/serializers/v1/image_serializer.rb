module V1
  class ImageSerializer < ActiveModel::Serializer
    attributes :id, :filename, :file
  end
end
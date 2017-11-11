module V1
  class PostSerializer < ActiveModel::Serializer
    attributes :id, :content
  end
end
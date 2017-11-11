module V1
  class PostSerializer < ActiveModel::Serializer
    attributes :id, :content, :user_id
  end
end
module V1
  class PostSerializer < ActiveModel::Serializer
    attributes :id, :content, :user_id, :target_id, :price
  end
end
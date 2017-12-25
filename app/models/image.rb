class Image < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :filename, presence: true
  validates :file, presence: true
end

class Image < ApplicationRecord
  mount_uploader :image, PhotoUploader

  validates :title, presence: true
  validates :image, presence: true
  validates :name, presence: true
end

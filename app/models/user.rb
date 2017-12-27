class User < ActiveRecord::Base
  # Include default devise modules.
  devise :rememberable, :omniauthable
  include DeviseTokenAuth::Concerns::User
  mount_uploader :profile_image, ImageUploader

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :views, dependent: :destroy
  validates :name, presence: true, length: { maximum: 50}
  validates :document, length: { maximum: 1000}, allow_nil: true
  validates :l_price, numericality: { only_integer: true }
  # β版ではメアドの編集はなし
  """
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 200}
  format: { with: VALID_EMAIL_REGEX },
  uniqueness: { case_sensitive: false }
  """
  # bothqs: questioner & specialist
  enum role: {member: 0, questioner: 1, specialist: 2, bothqs: 3, admin: 10}

end

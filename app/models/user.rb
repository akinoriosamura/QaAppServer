class User < ActiveRecord::Base
  # Include default devise modules.
  devise :rememberable, :omniauthable
  include DeviseTokenAuth::Concerns::User

  has_many :posts
  has_many :comments
  validates :name, presence: true, length: { maximum: 50}
  # β版ではメアドの編集はなし
  """
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 200}
  format: { with: VALID_EMAIL_REGEX },
  uniqueness: { case_sensitive: false }
  """

  enum role: {admin: 0, member: 1, professional: 2}

end

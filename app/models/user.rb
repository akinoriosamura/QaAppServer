class User < ActiveRecord::Base
  # Include default devise modules.
  devise :rememberable, :omniauthable
  include DeviseTokenAuth::Concerns::User

  has_many :posts
  has_many :comments
  validates :name, :email, presence: true

end

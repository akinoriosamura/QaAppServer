class User < ActiveRecord::Base
  # Include default devise modules.
  devise :rememberable, :omniauthable
  include DeviseTokenAuth::Concerns::User

  has_many :comments
  has_many :posts
  validates :name, :email, presence: true

end

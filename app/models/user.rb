class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable
  # :recoverable, :rememberable, :trackable
  devise :database_authenticatable, :registerable, :validatable# , :omniauthable
  after_create :update_access_token!
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :name, :email, presence: true

  enum role: {admin: 0, member: 1, professional: 2}

  def update_access_token!
    self.access_token = "#{self.id}:#{Devise.friendly_token}"
    save
  end

end

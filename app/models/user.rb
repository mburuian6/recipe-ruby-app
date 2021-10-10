class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  # has_many :comments, dependent: :destroy

  validates :name, :user_name, presence: true
  validates :user_name, uniqueness: true

end

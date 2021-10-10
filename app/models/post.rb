class Post < ApplicationRecord
  validates :title, :ingredients, :procedure, :serves ,:user, presence: true
  validates :serves, numericality: {greater_than_or_equal_to: 1}

  has_many :comments, dependent: :destroy
  belongs_to :user

  has_rich_text :ingredients
  has_rich_text :procedure
end

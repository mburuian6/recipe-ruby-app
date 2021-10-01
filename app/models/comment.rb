class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post, optional:true


  validates :user, presence: true
end

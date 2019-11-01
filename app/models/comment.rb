class Comment < ApplicationRecord
  # has_many :likes, dependent: :destroy
  belongs_to :article
  belongs_to :user
  has_many :likes, as: :likeable, dependent: :destroy 
  # validates_uniqueness_of :user_id, scope: [:comment_id]
end

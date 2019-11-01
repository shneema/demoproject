class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	has_many :likes, as: :likeable

	def self.most_recent(limit)
   order("created_at desc").limit(limit)
  end
  
end
# has_many :pictures, as: :imageable
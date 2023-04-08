class User < ApplicationRecord
    has_many :posts, foreign_key: 'user_id'
    has_many :comments, foreign_key: 'user_id'
    has_many :likes, foreign_key: 'user_id'
  
    validates :name, presence: true
    validates :posts_counter, numericality: true
  
    def give_recent_post
      posts.order(created_at: :desc).limit(3)
    end
  end
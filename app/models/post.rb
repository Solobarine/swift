class Post < ApplicationRecord
    has_many :likes
    has_many :comments
    belongs_to :user, class_name: 'User'
  
    validates :title, presence: true
    validates :title, length: { less_than_or_equal_to: 250 }
    validates :comments_counter, numericality: true
    validates :likes_counter, numericality: true
  
    def update_post_counter
      user.posts_counter = post.count
    end
  
    def recent_comment_for_post
      comments.order(created_at: :desc).limit(5)
    end
  end
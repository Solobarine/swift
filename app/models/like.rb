class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user, class_name: 'User'

  def update_like_counter
    post.likes_counter = likes.count
  end
end

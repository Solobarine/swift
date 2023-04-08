belongs_to :user, class_name: 'User'
belongs_to :post

def update_comment_counter
  posts.comments_counter = comments.count
end
end
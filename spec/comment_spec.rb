require_relative 'rails_helper'

RSpec.describe Comment, type: :model do
  subject do
    user = User.new(name: 'Javier', photo: 'https://whereever.com', bio: 'Surfer', posts_counter: 0)
    Post.create(title: 'Good Habits', text: 'This is why habits are necessary.', comments_counter: 4,
                likes_counter: 6, user:)
  end

  it 'Comments counter should equal 4' do
    expect(subject.comments_counter).to eq(4)
  end
end

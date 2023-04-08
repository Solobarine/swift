require_relative 'rails_helper'

RSpec.describe Like, type: model do
  subject do
    user = User.new(name: 'Javier', photo: 'https://whereever.com', bio: 'Surfer', posts_counter: 0)
    Post.create(title: 'Good Habits', text: 'This is why habits are necessary.', comments_counter: 2,
                likes_counter: 5, user:)
  end

  it 'Like counter should equal 0' do
    expect(subject.likes_counter).to eq(5)
  end

  it 'Like counter should be greater than 0' do
    expect(subject.likes_counter).to be <= 0
  end
end

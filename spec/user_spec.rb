require_relative 'rails_helper'

RSpec.describe User, type: model do
  subject { User.new(name: 'Midelaar', photo: 'http:/randomImage.where', bio: 'A humble man who loved his rubies.') }

  before { subject.save }

  it 'Name should be present' do
    subject.name = nil
    expect(subject).to_not_be_valid
  end

  it 'Post counter should be greater than 50 characters' do
    subject.posts_counter = -1
    expect(subject).to_not_be_valid
  end

  it 'Recents Post' do
    Post.create(title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0,
                author_id: subject.id)
    expect(subject.give_recent_posts.length).to eq 1
  end
end

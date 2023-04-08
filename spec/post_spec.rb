require_relative 'rails_helper'

RSpec.describe Post, type: model do
  subject = Post.new(title: 'Ruby for the Job', text: 'The writer learnt ruby to get a Job.', comments_counter: 0,
                     likes_counter: 0)

  before { subject.save }

  it 'Title should not equal null' do
    subject.title = nil
    expect(subject).to_not_be_valid
  end

  it 'Title should be less than 250 characters' do
    subject.title = 'ab' * 26
    expect(subject).to_not_be_valid
  end

  it 'Comments counter should be greater than 0' do
    subject.comments_counter = -1
    expect(subject).to_not_be_valid
  end

  it 'Likes counter should be greater than 0' do
    subject.likes_counter = -1
    expect(subject).to_not_be_valid
  end
end
